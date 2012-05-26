.class public Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;
.super Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;
.source "HistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/HistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ExactStyle"
.end annotation


# instance fields
.field private mMaxValue:J

.field final synthetic this$0:Lcom/android/settings/fuelgauge/HistoryChart;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/HistoryChart;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;->this$0:Lcom/android/settings/fuelgauge/HistoryChart;

    invoke-direct {p0, p1}, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;-><init>(Lcom/android/settings/fuelgauge/HistoryChart;)V

    return-void
.end method


# virtual methods
.method public beginPreprocess()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;->mMaxValue:J

    return-void
.end method

.method public doAddPath(Landroid/os/IHistoryValueItem;Landroid/graphics/Path;IZ)V
    .locals 6
    .parameter "item"
    .parameter "path"
    .parameter "x"
    .parameter "first"

    .prologue
    iget-wide v2, p0, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;->mMaxValue:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-nez v2, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getValue()J

    move-result-wide v2

    long-to-float v2, v2

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;->mMaxValue:J

    long-to-float v3, v3

    div-float/2addr v2, v3

    iget v3, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mHeight:I

    int-to-float v3, v3

    mul-float/2addr v2, v3

    float-to-int v0, v2

    .local v0, len:I
    iget v2, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mBottom:I

    sub-int v1, v2, v0

    .local v1, y:I
    if-eqz p4, :cond_1

    iget-object v2, p0, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;->this$0:Lcom/android/settings/fuelgauge/HistoryChart;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    int-to-float v3, p3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->moveTo(FF)V

    goto :goto_0

    :cond_1
    iget-object v2, p0, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;->this$0:Lcom/android/settings/fuelgauge/HistoryChart;

    iget-object v2, v2, Lcom/android/settings/fuelgauge/HistoryChart;->mHistoryPath:Landroid/graphics/Path;

    int-to-float v3, p3

    int-to-float v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_0
.end method

.method public getMaxValueString(Ljava/lang/String;)Ljava/lang/String;
    .locals 5
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

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;->mMaxValue:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

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
    .locals 4
    .parameter "item"

    .prologue
    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getValue()J

    move-result-wide v0

    .local v0, value:J
    iget-wide v2, p0, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;->mMaxValue:J

    cmp-long v2, v0, v2

    if-lez v2, :cond_0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$ExactStyle;->mMaxValue:J

    :cond_0
    return-void
.end method
