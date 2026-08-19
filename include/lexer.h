#ifndef LEXER_H
#define LEXER_H

#include "token.h"

/*
 * Lexer function
 * Converts the input command into tokens.
 */
void lexer(const char *input, token_list_t *list);

#endif
