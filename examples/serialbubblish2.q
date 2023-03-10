mutable Q main(int arg) {
    Ref list = (8980 . (3692 . (851563 . (1301 . (2978 . (8724 . (5612 . (882 . (317 . (5278 . (655 . (6535 . (603 . (2766 . (907 . (1974 . (899 . (2318 . (83129 . (8865 . (73059 . (832 . (6569 . (6208 . (1211 . (78127 . (17288 . (463 . (2000 . (2427 . (9642 . (60344 . (2922 . (5147 . (48581 . (6029 . (1877 . (5160 . (6932 . (24508 . (8020 . (1475 . (8993 . (6282 . (76513 . (8865 . (6716 . (38033 . (4479 . (42300 . (2469 . (7570 . (1361 . (35836 . (3645 . (14731 . (5951 . (43572 . (6918 . (6610 . (5744 . (3833 . (5671 . (9436 . (94403 . (2552 . (6105 . (82199 . (5901 . (3041 . (1268 . (3913 . (4678 . (9829 . (9299 . (2686 . (89587 . (4185 . (9603 . (4038 . (62822 . (5848 . (7385 . (53092 . (9969 . (25670 . (2361 . (9504 . (9807 . (8157 . (6047 . (4022 . (40736 . (892 . (1018 . (2741 . (5847 . (9459 . (5164 . (9025 . nil))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))));
    sort(list);
    return list;
}

mutable Q sort(Ref list) {
    mutable Ref tmp1 = list;
    int len = length(list);
    mutable int pos1 = 0;
    while (isNil(tmp1) == 0) {
        mutable Ref tmp2 = list;
        mutable int pos2 = 0;
        while (pos2 < pos1) {
            if ((int)left(tmp2) > (int)left(tmp1)) {
                int value = (int)left(tmp1);
                setLeft(tmp1, left(tmp2));
                setLeft(tmp2, value);
            }
            Ref newTmp2 = (Ref)right(tmp2);
            tmp2 = newTmp2;
            pos2 = pos2 + 1;
        }
        Ref newTmp1 = (Ref)right(tmp1);
        tmp1 = newTmp1;
        pos1 = pos1 + 1;
    }
    return pos1;
}

Ref concat(Ref first, Ref second) {
    if (isNil(first) != 0)
        return second;
    if (isNil(right(first)) != 0)
        return left(first) . second;
    return left(first) . concat((Ref)right(first), second);
}

int isSorted(Ref list) {
    if (isNil(list) != 0 || isNil(right(list)) != 0)
        return 1;
    if ((int)left(list) > (int)left((Ref)right(list)))
        return 0;
    return isSorted((Ref)right(list));
}

int length(Ref list) {
    if (isNil(list) != 0) return 0;
    return 1 + length((Ref)right(list));
}

Ref randomList(int n) {
    if (n == 0) return nil;
    return randomInt(10000) . randomList(n - 1);
}
