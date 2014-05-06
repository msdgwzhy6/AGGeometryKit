//
// Author: Håvard Fossli <hfossli@agens.no>
//
// Copyright (c) 2013 Agens AS (http://agens.no/)
//
// Permission is hereby granted, free of charge, to any person obtaining a copy
// of this software and associated documentation files (the "Software"), to deal
// in the Software without restriction, including without limitation the rights
// to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
// copies of the Software, and to permit persons to whom the Software is
// furnished to do so, subject to the following conditions:
//
// The above copyright notice and this permission notice shall be included in
// all copies or substantial portions of the Software.
//
// THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
// IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
// FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
// AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
// LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
// OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
// THE SOFTWARE.

#import "AGKCorner.h"

extern BOOL AGKCornerIsOnSide(AGKCorner corner, AGKSide side)
{
    return (corner & side) == side;
}

CGPoint AGKCornerConvertToAnchorPoint(AGKCorner corner)
{
    switch (corner) {
        case AGKCornerTopLeft:
            return CGPointMake(0, 0);
            break;
        case AGKCornerTopRight:
            return CGPointMake(1, 0);
            break;
        case AGKCornerBottomLeft:
            return CGPointMake(0, 1);
            break;
        case AGKCornerBottomRight:
            return CGPointMake(1, 1);
            break;
    }
}

CGPoint AGKCornerConvertToPointForRect(AGKCorner corner, CGRect rect)
{
    CGPoint anchor = AGKCornerConvertToAnchorPoint(corner);
    CGPoint p = AGKCGPointConvertFromAnchorPoint(anchor, rect);
    return p;
}