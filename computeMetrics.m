function Metrics = computeMetrics(y_true,y_pred)
% Compute true positive, false positive, and false negative
    % Compute true positives (TP)
    tp = sum(y_true == 1 & y_pred == 1);

    % Compute false positives (FP)
    fp = sum(y_true == 0 & y_pred == 1);

    % Compute false negatives (FN)
    fn = sum(y_true == 1 & y_pred == 0);

    % Compute true negatives (TN)
    tn = sum(y_true == 0 & y_pred == 0);

    % Calculate precision, recall, and F1 score
    accuracy = (tp + tn) / (tp + tn + fp + fn);
    precision = tp / (tp + fp);
    recall = tp / (tp + fn);
    f1 = 2 * (precision * recall) / (precision + recall);
    Metrics = [accuracy, precision, recall, f1];
end