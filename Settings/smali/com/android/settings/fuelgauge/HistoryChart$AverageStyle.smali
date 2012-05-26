.class public Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;
.super Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;
.source "HistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/HistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AverageStyle"
.end annotation


# instance fields
.field private mMaxValueFloat:F

.field final synthetic this$0:Lcom/android/settings/fuelgauge/HistoryChart;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/HistoryChart;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;->this$0:Lcom/android/settings/fuelgauge/HistoryChart;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;-><init>(Lcom/android/settings/fuelgauge/HistoryChart;)V

    return-void
.end method


# virtual methods
.method public beginPreprocess()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;->mMaxValueFloat:F

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    return-void
.end method

.method protected doAddPath(Landroid/os/IHistoryValueItem;Landroid/graphics/Path;IZ)V
    .locals 8
    .parameter "item"
    .parameter "path"
    .parameter "x"
    .parameter "first"

    .prologue
    if-eqz p4, :cond_0

    iget-object v3, p0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;->this$0:Lcom/android/settings/fuelgauge/HistoryChart;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    int-to-float v4, p3

    iget v5, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mBottom:I

    int-to-float v5, v5

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->moveTo(FF)V

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getValue()J

    move-result-wide v3

    long-to-float v3, v3

    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    sub-long/2addr v4, v6

    long-to-float v4, v4

    div-float v1, v3, v4

    .local v1, power:F
    iget v3, p0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;->mMaxValueFloat:F

    div-float v3, v1, v3

    iget v4, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mHeight:I

    int-to-float v4, v4

    mul-float/2addr v3, v4

    float-to-int v0, v3

    .local v0, len:I
    iget v3, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mBottom:I

    sub-int v2, v3, v0

    .local v2, y:I
    iget-object v3, p0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;->this$0:Lcom/android/settings/fuelgauge/HistoryChart;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    iget v4, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastX:I

    int-to-float v4, v4

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v3, p0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;->this$0:Lcom/android/settings/fuelgauge/HistoryChart;

    iget-object v3, v3, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    int-to-float v4, p3

    int-to-float v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method public endPath(Landroid/graphics/Path;)V
    .locals 3
    .parameter "path"

    .prologue
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;->this$0:Lcom/android/settings/fuelgauge/HistoryChart;

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    iget v1, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastX:I

    int-to-float v1, v1

    iget v2, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mBottom:I

    int-to-float v2, v2

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    return-void
.end method

.method public getMaxValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "unitFormat"

    .prologue
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Max: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;->mMaxValueFloat:F

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public preprocess(Landroid/os/IHistoryValueItem;)V
    .locals 6
    .parameter "item"

    .prologue
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v1

    iput-wide v1, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    return-void

    :cond_1
    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v1

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getValue()J

    move-result-wide v1

    long-to-float v1, v1

    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v2

    iget-wide v4, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    sub-long/2addr v2, v4

    long-to-float v2, v2

    div-float v0, v1, v2

    .local v0, power:F
    iget v1, p0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;->mMaxValueFloat:F

    cmpl-float v1, v0, v1

    if-lez v1, :cond_0

    iput v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$AverageStyle;->mMaxValueFloat:F

    goto :goto_0
.end method
