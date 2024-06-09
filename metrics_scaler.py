import pandas as pd
from joblib import load
import numpy as np

class MetricsScaler:
    def __init__(self, scaler_path):
        # Load the pre-trained MinMaxScaler
        self.scaler = load(scaler_path)

    def scale_metrics(self, metrics):
        # Convert the dictionary of metrics into a DataFrame
        metrics_df = pd.DataFrame([metrics])

        for c in metrics_df.columns:
            if metrics_df[c].iloc[0] > 0:
                metrics_df[c] = np.log(metrics_df[c] + 1)
        # Scale the metrics
        metrics_scaled = self.scaler.transform(metrics_df)

        
        return metrics_scaled