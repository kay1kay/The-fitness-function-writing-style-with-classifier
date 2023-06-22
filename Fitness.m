function fitness = Fitness(Dataset, opt, metricsID)
    [y_true, y_pred] = deepLearning2(Dataset, opt);
    res = computeMetrics(y_true, y_pred);
    fitness = res(metricsID);
end
