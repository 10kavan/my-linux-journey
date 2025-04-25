import psutil
import time
from rich.console import Console
from rich.table import Table
from rich.live import Live

console = Console()

def get_stats():
    table = Table(title="🖥️  Real-Time System Monitor", title_style="bold cyan")

    table.add_column("Component", style="bold magenta")
    table.add_column("Usage", style="bold green")

    # CPU
    cpu_percent = psutil.cpu_percent(interval=0.5)
    table.add_row("🧠 CPU Usage", f"{cpu_percent}%")

    # Memory
    memory = psutil.virtual_memory()
    table.add_row("🧠 Memory Usage", f"{memory.percent}% ({memory.used // (1024**2)}MB / {memory.total // (1024**2)}MB)")

    # Disk
    disk = psutil.disk_usage('/')
    table.add_row("💾 Disk Usage", f"{disk.percent}% ({disk.used // (1024**3)}GB / {disk.total // (1024**3)}GB)")

    # Network
    net = psutil.net_io_counters()
    table.add_row("🌐 Network (Sent)", f"{net.bytes_sent // (1024**2)} MB")
    table.add_row("🌐 Network (Recv)", f"{net.bytes_recv // (1024**2)} MB")

    # Top 3 Processes
    processes = sorted(psutil.process_iter(['pid', 'name', 'memory_percent']), key=lambda p: p.info['memory_percent'], reverse=True)
    for p in processes[:3]:
        try:
            table.add_row(f"🔥 {p.info['name']}", f"{p.info['memory_percent']:.2f}% RAM")
        except:
            continue

    return table

with Live(get_stats(), refresh_per_second=1, screen=True):
    while True:
        time.sleep(1)

