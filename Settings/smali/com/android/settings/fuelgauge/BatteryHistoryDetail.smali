.class public Lcom/android/settings/fuelgauge/BatteryHistoryDetail;
.super Landroid/app/Activity;
.source "BatteryHistoryDetail.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .locals 14
    .parameter "icicle"

    .prologue
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    const v10, 0x7f03003e

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->setContentView(I)V

    const v10, 0x1010002

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;

    .local v0, batteryChart:Lcom/android/settings/fuelgauge/BatteryHistoryChart;
    const v10, 0x7f0c00e6

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Lcom/android/settings/fuelgauge/HistoryTimelineChart;

    .local v8, timelineChart:Lcom/android/settings/fuelgauge/HistoryTimelineChart;
    const v10, 0x7f0c00e7

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;

    .local v9, wakelockChart:Lcom/android/settings/fuelgauge/WakeLockDetailsChart;
    const v10, 0x7f0c00e5

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/android/settings/fuelgauge/HistoryChart;

    .local v1, chart:Lcom/android/settings/fuelgauge/HistoryChart;
    const v10, 0x7f0c00e4

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->findViewById(I)Landroid/view/View;

    move-result-object v7

    .local v7, text:Landroid/view/View;
    invoke-static {}, Lcom/android/settings/fuelgauge/PowerUsageSummary;->getBatteryStats()Lcom/android/internal/os/BatteryStatsImpl;

    move-result-object v6

    .local v6, stats:Lcom/android/internal/os/BatteryStatsImpl;
    invoke-static {}, Lcom/android/internal/util/CurrentReader;->getInstance()Lcom/android/internal/util/CurrentReader;

    move-result-object v10

    invoke-virtual {v10}, Lcom/android/internal/util/CurrentReader;->canRead()Z

    move-result v10

    if-eqz v10, :cond_2

    const-string v10, "%,d uA"

    invoke-virtual {v1, v10}, Lcom/android/settings/fuelgauge/HistoryChart;->setUnitFormat(Ljava/lang/String;)V

    sget-object v10, Lcom/android/settings/fuelgauge/HistoryChart$Style;->Exact:Lcom/android/settings/fuelgauge/HistoryChart$Style;

    invoke-virtual {v1, v10}, Lcom/android/settings/fuelgauge/HistoryChart;->setStyle(Lcom/android/settings/fuelgauge/HistoryChart$Style;)V

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->getBatteryCurrentHistory()Landroid/os/IHistoryValueTimeline;

    move-result-object v10

    invoke-virtual {v1, v10}, Lcom/android/settings/fuelgauge/HistoryChart;->setHistory(Landroid/os/IHistoryValueTimeline;)V

    :goto_0
    invoke-virtual {v0, v6}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->setStats(Landroid/os/BatteryStats;)V

    invoke-virtual {v6}, Lcom/android/internal/os/BatteryStatsImpl;->getHistoryTimeline()Landroid/os/IHistoryTimeline;

    move-result-object v10

    invoke-virtual {v8, v10}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->setTimeline(Landroid/os/IHistoryTimeline;)V

    const-string v10, "sensor"

    invoke-virtual {p0, v10}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .end local p1
    check-cast p1, Landroid/hardware/SensorManager;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryDetail;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v10

    invoke-virtual {v9, v6, p1, v10}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->setHistory(Landroid/os/BatteryStats;Landroid/hardware/SensorManager;Landroid/content/pm/PackageManager;)V

    iget-wide v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    iget-wide v12, v8, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_3

    iget-wide v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide v4, v10

    .local v4, histStart:J
    :goto_1
    iget-wide v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    cmp-long v10, v4, v10

    if-gez v10, :cond_0

    iget-wide v4, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    :cond_0
    iget-wide v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v12, v8, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_5

    iget-wide v10, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide v2, v10

    .local v2, histEnd:J
    :goto_2
    const-wide/32 v10, 0xa4cb800

    sub-long v12, v2, v4

    cmp-long v10, v10, v12

    if-gez v10, :cond_1

    const-wide/32 v10, 0xa4cb800

    sub-long v4, v2, v10

    :cond_1
    invoke-virtual {v0, v4, v5, v2, v3}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adjustStartEndTime(JJ)V

    invoke-virtual {v8, v4, v5, v2, v3}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->adjustStartEndTime(JJ)V

    invoke-virtual {v9, v4, v5, v2, v3}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->adjustStartEndTime(JJ)V

    return-void

    .end local v2           #histEnd:J
    .end local v4           #histStart:J
    .restart local p1
    :cond_2
    const/16 v10, 0x8

    invoke-virtual {v1, v10}, Lcom/android/settings/fuelgauge/HistoryChart;->setVisibility(I)V

    const/16 v10, 0x8

    invoke-virtual {v7, v10}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .end local p1
    :cond_3
    iget-wide v10, v8, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    iget-wide v12, v9, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    cmp-long v10, v10, v12

    if-gez v10, :cond_4

    iget-wide v10, v8, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    move-wide v4, v10

    goto :goto_1

    :cond_4
    iget-wide v10, v9, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    move-wide v4, v10

    goto :goto_1

    .restart local v4       #histStart:J
    :cond_5
    iget-wide v10, v8, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    iget-wide v12, v9, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    cmp-long v10, v10, v12

    if-lez v10, :cond_6

    iget-wide v10, v8, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    move-wide v2, v10

    goto :goto_2

    :cond_6
    iget-wide v10, v9, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    move-wide v2, v10

    goto :goto_2
.end method
