#include "types.h"
#include "uart.h"

/**
 * Uart 送受信に使用するレジスタ。
 *
 * 書き込むと UART にデータ送信
 */
#define DR (*(volatile unsigned int *)0x09000000)

/**
 * Uart 送信 FIFO の状態確認をするための情報が入ったレジスタ。
 */
#define UART_FR (*(volatile unsigned int *)0x09000018)

/* Data full のビットマスク */
#define UART_TXFF  (1U << 5)


void println(const char* chars) {
    print(chars);
    print("\n\r");
}

void print(const char* chars) {
    char* char_ptr = (char*) chars;

    while (*char_ptr != '\0') {
        uart_put(*char_ptr);
        char_ptr++;
    }
}

void uart_put(const char c) {
    // 送信 FIFO の確認(FULL でなければ送信する)
    while (UART_FR & UART_TXFF);

    // IO レジスタにデータ書き込み
    DR = c;
}
