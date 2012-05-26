.class public abstract Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;
.super Ljava/lang/Object;
.source "HistoryChart.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/fuelgauge/HistoryChart;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401
    name = "StyleStrategy"
.end annotation


# instance fields
.field protected first:Z

.field protected mBottom:I

.field protected mHeight:I

.field protected mLastTime:J

.field protected mLastX:I

.field final synthetic this$0:Lcom/android/settings/fuelgauge/HistoryChart;


# direct methods
.method public constructor <init>(Lcom/android/settings/fuelgauge/HistoryChart;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->this$0:Lcom/android/settings/fuelgauge/HistoryChart;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final addPath(Landroid/os/IHistoryValueItem;Landroid/graphics/Path;I)V
    .locals 4
    .parameter "item"
    .parameter "path"
    .parameter "x"

    .prologue
    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    invoke-virtual {p0, p1, p2, p3, v0}, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->doAddPath(Landroid/os/IHistoryValueItem;Landroid/graphics/Path;IZ)V

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    :cond_1
    iput p3, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastX:I

    invoke-interface {p1}, Landroid/os/IHistoryValueItem;->getTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    goto :goto_0
.end method

.method public beginPath(Landroid/graphics/Path;II)V
    .locals 2
    .parameter "path"
    .parameter "height"
    .parameter "bottom"

    .prologue
    invoke-virtual {p1}, Landroid/graphics/Path;->reset()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->first:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastTime:J

    const/4 v0, 0x0

    iput v0, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mLastX:I

    iput p2, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mHeight:I

    iput p3, p0, Lcom/android/settings/fuelgauge/HistoryChart$StyleStrategy;->mBottom:I

    return-void
.end method

.method public abstract beginPreprocess()V
.end method

.method protected abstract doAddPath(Landroid/os/IHistoryValueItem;Landroid/graphics/Path;IZ)V
.end method

.method public endPath(Landroid/graphics/Path;)V
    .locals 0
    .parameter "path"

    .prologue
    return-void
.end method

.method public abstract getMaxValueString(Ljava/lang/String;)Ljava/lang/String;
.end method

.method public abstract preprocess(Landroid/os/IHistoryValueItem;)V
.end method
