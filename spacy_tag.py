# -*- coding: utf-8 -*-
import fileinput
import spacy


if __name__ == '__main__':
    nlp = spacy.load('en_core_web_sm', disable=('ner',))

    for line in fileinput.input():
        print(*(f"{token.text}({token.pos_})" for token in nlp(line.strip())))
