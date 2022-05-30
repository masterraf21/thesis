C_ALPHA: dict[float, float] = {}
C_ALPHA[0.1] = 1.22
C_ALPHA[0.05] = 1.36
C_ALPHA[0.025] = 1.48
C_ALPHA[0.01] = 1.63
C_ALPHA[0.005] = 1.73
C_ALPHA[0.001] = 1.95


def count_critical_value(n1: int, n2: int, alpha: float) -> float:
    if alpha not in C_ALPHA:
        raise ValueError("Alpha not available")
    c_alpha = C_ALPHA[alpha]
    return c_alpha*math.sqrt((n1+n2)/n1*n2)
