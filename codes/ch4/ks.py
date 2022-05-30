from scipy.stats import ks_2samp


def ks_test_same_dist(data1: list[float], data2: list[float],
                      alpha: float, debug: bool = False) -> bool:

    test = ks_2samp(data1, data2)
    critical_value = count_critical_value(len(data1), len(data2), alpha)
    pvalue, statistic = test.pvalue, test.statistic

    if pvalue < alpha:
        return False

    # if statistic > crit vale : different dist
    # if statistic < crit value: same dist

    return statistic < critical_value
