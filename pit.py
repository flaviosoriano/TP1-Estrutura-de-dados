import pandas as pd
import matplotlib.pyplot as plt

# Ler dados do CSV
df = pd.read_csv('sort_results.csv')

# Função para plotar gráficos
def plot_metrics(metric, ylabel, title):
    plt.figure(figsize=(10, 6))
    for alg in df['Algorithm'].unique():
        subset = df[df['Algorithm'] == alg]
        plt.plot(subset['Size'], subset[metric], marker='o', label=alg)
    plt.xlabel('Size')
    plt.ylabel(ylabel)
    plt.title(title)
    plt.legend()
    plt.grid(True)
    plt.show()

# Plotar gráficos para cada métrica
plot_metrics('Time', 'Time (s)', 'Execution Time')
plot_metrics('Comparisons', 'Number of Comparisons', 'Comparisons')
plot_metrics('Movements', 'Number of Movements', 'Movements')
plot_metrics('Calls', 'Number of Function Calls', 'Function Calls')
