#!/usr/bin/env python2.7
import argparse


def get_cli_options():
    parser = argparse.ArgumentParser(description='A simple util for creating comment blocks')
    parser.add_argument('-s', '--sign', default='*',
                        help='The sign to duplicate in the comment.')
    parser.add_argument('-c', '--comment', default='/',
                        help='The character to user to start/end a comment.')
    parser.add_argument('-l', '--length', default=50, type=int,
                        help='The length of the comment block')
    parser.add_argument('-t', '--title', required=True,
                        help='The title of the comment block to create')

    return parser.parse_args()


def main():
    args = get_cli_options()
    center_line_format = ' {0}{1:^%d}{0}' % (args.length - 2)
    print args.comment + args.sign * args.length
    print center_line_format.format(args.sign, args.title)
    print ' ' + args.sign * args.length + args.comment


if __name__ == ‘__main__‘:
    main()
