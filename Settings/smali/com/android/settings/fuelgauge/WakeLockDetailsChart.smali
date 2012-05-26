.class public Lcom/android/settings/fuelgauge/WakeLockDetailsChart;
.super Landroid/view/View;
.source "WakeLockDetailsChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/WakeLockDetailsChart$1;,
        Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;
    }
.end annotation


# instance fields
.field mDurationString:Ljava/lang/String;

.field private mHist:Landroid/os/BatteryStats;

.field mHistEnd:J

.field mHistStart:J

.field final mTextPaint:Landroid/text/TextPaint;

.field final mThinLinePaint:Landroid/graphics/Paint;

.field private mTimeLines:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;",
            ">;"
        }
    .end annotation
.end field

.field private mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

.field final mTitleTextPaint:Landroid/text/TextPaint;

.field final mWakeLockPaint:Landroid/graphics/Paint;

.field final mWakeLockPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v5, 0x1060049

    const/16 v4, 0xff

    const/high16 v3, 0x4180

    const/4 v1, 0x1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTitleTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mThinLinePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPath:Landroid/graphics/Path;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTimeLines:Ljava/util/ArrayList;

    new-instance v0, Lcom/android/settings/fuelgauge/TimeScale;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/TimeScale;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPaint:Landroid/graphics/Paint;

    const/16 v1, 0x20

    const/16 v2, 0x40

    invoke-virtual {v0, v4, v1, v2, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0, v3}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mThinLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method


# virtual methods
.method adjustStartEndTime(JJ)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    iput-wide p3, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mDurationString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/TimeScale;->init(JJ)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 13
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getWidth()I

    move-result v11

    .local v11, width:I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getHeight()I

    move-result v7

    .local v7, height:I
    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mDurationString:Ljava/lang/String;

    const/high16 v1, 0x4120

    const/high16 v2, 0x4180

    iget-object v3, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v5, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mThinLinePaint:Landroid/graphics/Paint;

    .local v5, paint:Landroid/graphics/Paint;
    const/16 v10, 0x14

    .local v10, top:I
    const/16 v0, 0xf

    sub-int v6, v7, v0

    .local v6, bottom:I
    const/4 v1, 0x0

    int-to-float v2, v6

    int-to-float v3, v11

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    int-to-float v2, v10

    int-to-float v3, v11

    int-to-float v4, v10

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    sub-int v0, v11, v0

    int-to-float v1, v0

    int-to-float v2, v10

    const/4 v0, 0x1

    sub-int v0, v11, v0

    int-to-float v3, v0

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    int-to-float v2, v10

    const/4 v3, 0x0

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTimeLines:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    .local v8, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;

    .local v9, item:Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;
    iget-object v0, v9, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    const/high16 v1, 0x4120

    iget v2, v9, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->y:I

    add-int/lit8 v2, v2, 0x10

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget v0, v9, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->y:I

    add-int/lit8 v12, v0, 0x22

    .local v12, y:I
    const/4 v1, 0x0

    int-to-float v2, v12

    int-to-float v3, v11

    int-to-float v4, v12

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    goto :goto_0

    .end local v9           #item:Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;
    .end local v12           #y:I
    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    invoke-virtual {v0, p1, v6, v11}, Lcom/android/settings/fuelgauge/TimeScale;->draw(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHist:Landroid/os/BatteryStats;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getSuggestedMinimumWidth()I

    move-result v0

    invoke-static {v0, p1}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getDefaultSize(II)I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTimeLines:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    mul-int/lit8 v1, v1, 0x22

    add-int/lit8 v1, v1, 0x23

    invoke-virtual {p0, v0, v1}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 17
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHist:Landroid/os/BatteryStats;

    move-object v13, v0

    if-nez v13, :cond_1

    :cond_0
    return-void

    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTextPaint:Landroid/text/TextPaint;

    move-object v13, v0

    const/high16 v14, 0x4000

    invoke-virtual {v13, v14}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object v13, v0

    const/high16 v14, 0x4100

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mThinLinePaint:Landroid/graphics/Paint;

    move-object v13, v0

    const/high16 v14, 0x3f80

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPath:Landroid/graphics/Path;

    move-object v13, v0

    invoke-virtual {v13}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    move-wide v13, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    move-wide v15, v0

    sub-long v8, v13, v15

    .local v8, timeChange:J
    const/16 v5, 0x14

    .local v5, lineY:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTimeLines:Ljava/util/ArrayList;

    move-object v13, v0

    invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;

    .local v3, item:Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;
    iput v5, v3, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->y:I

    iget-object v13, v3, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->timeline:Landroid/os/IHistoryTimeline;

    invoke-interface {v13}, Landroid/os/IHistoryTimeline;->startIteratingHistoryLocked()Z

    move-result v13

    if-eqz v13, :cond_7

    new-instance v6, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v6}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v6, rec:Landroid/os/BatteryStats$HistoryItem;
    const/4 v4, 0x0

    .local v4, lastWakeLock:Z
    add-int/lit8 v12, v5, 0x19

    .local v12, y:I
    const/4 v7, 0x0

    .local v7, startX:I
    :cond_2
    :goto_1
    iget-object v13, v3, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->timeline:Landroid/os/IHistoryTimeline;

    invoke-interface {v13, v6}, Landroid/os/IHistoryTimeline;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v13

    if-eqz v13, :cond_6

    iget-wide v13, v6, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    move-wide v15, v0

    sub-long/2addr v13, v15

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide v15, v0

    mul-long/2addr v13, v15

    div-long/2addr v13, v8

    long-to-int v13, v13

    add-int/lit8 v11, v13, 0x1

    .local v11, x:I
    iget v13, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    const/high16 v14, -0x7ffd

    and-int/2addr v13, v14

    if-eqz v13, :cond_3

    const/4 v13, 0x1

    iget-byte v14, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-eq v13, v14, :cond_3

    const/4 v13, 0x1

    move v10, v13

    .local v10, wakeLock:Z
    :goto_2
    if-eq v10, v4, :cond_2

    if-eqz v10, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPath:Landroid/graphics/Path;

    move-object v13, v0

    int-to-float v14, v11

    int-to-float v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->moveTo(FF)V

    move v7, v11

    :goto_3
    move v4, v10

    goto :goto_1

    .end local v10           #wakeLock:Z
    :cond_3
    const/4 v13, 0x0

    move v10, v13

    goto :goto_2

    .restart local v10       #wakeLock:Z
    :cond_4
    if-ne v11, v7, :cond_5

    add-int/lit8 v11, v11, 0x1

    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPath:Landroid/graphics/Path;

    move-object v13, v0

    int-to-float v14, v11

    int-to-float v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_3

    .end local v10           #wakeLock:Z
    .end local v11           #x:I
    :cond_6
    if-eqz v4, :cond_7

    const-string v13, "Settings_Fuelgauge"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string v15, "Open wake lock: "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-object v15, v3, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget-byte v15, v6, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    invoke-static {v15}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string v15, " "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    iget v15, v6, Landroid/os/BatteryStats$HistoryItem;->states:I

    invoke-static {v15}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mWakeLockPath:Landroid/graphics/Path;

    move-object v13, v0

    move/from16 v0, p1

    int-to-float v0, v0

    move v14, v0

    int-to-float v15, v12

    invoke-virtual {v13, v14, v15}, Landroid/graphics/Path;->lineTo(FF)V

    .end local v4           #lastWakeLock:Z
    .end local v6           #rec:Landroid/os/BatteryStats$HistoryItem;
    .end local v7           #startX:I
    .end local v12           #y:I
    :cond_7
    add-int/lit8 v5, v5, 0x22

    goto/16 :goto_0
.end method

.method setHistory(Landroid/os/BatteryStats;Landroid/hardware/SensorManager;Landroid/content/pm/PackageManager;)V
    .locals 24
    .parameter "stats"
    .parameter "sensorManager"
    .parameter "packageManager"

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHist:Landroid/os/BatteryStats;

    const-wide v20, 0x7fffffffffffffffL

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    const-wide/16 v20, 0x0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTimeLines:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->clear()V

    const/16 v20, -0x1

    move-object/from16 v0, p2

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/hardware/SensorManager;->getSensorList(I)Ljava/util/List;

    move-result-object v18

    .local v18, sensors:Ljava/util/List;,"Ljava/util/List<Landroid/hardware/Sensor;>;"
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->getSensorTimeline()Landroid/util/SparseArray;

    move-result-object v17

    .local v17, sensorTimeline:Landroid/util/SparseArray;,"Landroid/util/SparseArray<+Landroid/os/IHistoryTimeline;>;"
    invoke-virtual/range {v17 .. v17}, Landroid/util/SparseArray;->size()I

    move-result v11

    .local v11, numSensors:I
    const/4 v6, 0x0

    .end local p1
    .local v6, i:I
    :goto_0
    if-ge v6, v11, :cond_7

    new-instance v8, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;

    const/16 v20, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;-><init>(Lcom/android/settings/fuelgauge/WakeLockDetailsChart;Lcom/android/settings/fuelgauge/WakeLockDetailsChart$1;)V

    .local v8, item:Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;
    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHistoryTimeline;

    move-object/from16 v0, p1

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->timeline:Landroid/os/IHistoryTimeline;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->timeline:Landroid/os/IHistoryTimeline;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/os/IHistoryTimeline;->startIteratingHistoryLocked()Z

    move-result v20

    if-nez v20, :cond_1

    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    :cond_1
    const/16 v19, 0x0

    .local v19, shouldBeAdded:Z
    new-instance v14, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v14}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v14, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_2
    move-object v0, v8

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->timeline:Landroid/os/IHistoryTimeline;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/os/IHistoryTimeline;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v20

    if-eqz v20, :cond_4

    move-object v0, v14

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v20, v0

    if-nez v20, :cond_2

    move-object v0, v14

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_3

    move-object v0, v14

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    :cond_3
    const/high16 v20, -0x7ffd

    move-object v0, v14

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_2

    const/16 v19, 0x1

    :cond_4
    if-eqz v19, :cond_0

    move-object/from16 v0, v17

    move v1, v6

    invoke-virtual {v0, v1}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v16

    .local v16, sensorHandle:I
    invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_5
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_6

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Landroid/hardware/Sensor;

    .local v15, s:Landroid/hardware/Sensor;
    invoke-virtual {v15}, Landroid/hardware/Sensor;->getHandle()I

    move-result v20

    move/from16 v0, v16

    move/from16 v1, v20

    if-ne v0, v1, :cond_5

    invoke-virtual {v15}, Landroid/hardware/Sensor;->getType()I

    move-result v20

    packed-switch v20, :pswitch_data_0

    invoke-virtual {v15}, Landroid/hardware/Sensor;->getName()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    .end local v15           #s:Landroid/hardware/Sensor;
    :cond_6
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTimeLines:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_1

    .restart local v15       #s:Landroid/hardware/Sensor;
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905a8

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto :goto_2

    :pswitch_1
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905a9

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto :goto_2

    :pswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905aa

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto :goto_2

    :pswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905ab

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto :goto_2

    :pswitch_4
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905ac

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto :goto_2

    :pswitch_5
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905ad

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto :goto_2

    :pswitch_6
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905ae

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_7
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905af

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_8
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905b0

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_9
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905b1

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto/16 :goto_2

    :pswitch_a
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->getContext()Landroid/content/Context;

    move-result-object v20

    const v21, 0x7f0905b2

    invoke-virtual/range {v20 .. v21}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    goto/16 :goto_2

    .end local v7           #i$:Ljava/util/Iterator;
    .end local v8           #item:Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;
    .end local v14           #rec:Landroid/os/BatteryStats$HistoryItem;
    .end local v15           #s:Landroid/hardware/Sensor;
    .end local v16           #sensorHandle:I
    .end local v19           #shouldBeAdded:Z
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHist:Landroid/os/BatteryStats;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/BatteryStats;->getPackageTimeline()Ljava/util/Map;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v20

    invoke-interface/range {v20 .. v20}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .restart local v7       #i$:Ljava/util/Iterator;
    :cond_8
    :goto_3
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_f

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/util/Map$Entry;

    .local v13, pkgWk:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/IHistoryTimeline;>;"
    new-instance v8, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;

    const/16 v20, 0x0

    move-object v0, v8

    move-object/from16 v1, p0

    move-object/from16 v2, v20

    invoke-direct {v0, v1, v2}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;-><init>(Lcom/android/settings/fuelgauge/WakeLockDetailsChart;Lcom/android/settings/fuelgauge/WakeLockDetailsChart$1;)V

    .restart local v8       #item:Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;
    invoke-interface {v13}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/IHistoryTimeline;

    move-object/from16 v0, p1

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->timeline:Landroid/os/IHistoryTimeline;

    move-object v0, v8

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->timeline:Landroid/os/IHistoryTimeline;

    move-object/from16 v20, v0

    invoke-interface/range {v20 .. v20}, Landroid/os/IHistoryTimeline;->startIteratingHistoryLocked()Z

    move-result v20

    if-eqz v20, :cond_8

    const/16 v19, 0x0

    .restart local v19       #shouldBeAdded:Z
    new-instance v14, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v14}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .restart local v14       #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_9
    move-object v0, v8

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->timeline:Landroid/os/IHistoryTimeline;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v14

    invoke-interface {v0, v1}, Landroid/os/IHistoryTimeline;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v20

    if-eqz v20, :cond_b

    move-object v0, v14

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v20, v0

    if-nez v20, :cond_9

    move-object v0, v14

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gez v20, :cond_a

    move-object v0, v14

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    :cond_a
    const/high16 v20, -0x7ffd

    move-object v0, v14

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v21, v0

    and-int v20, v20, v21

    if-eqz v20, :cond_9

    const/16 v19, 0x1

    :cond_b
    if-eqz v19, :cond_8

    invoke-interface {v13}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    .local v10, name:Ljava/lang/String;
    const/4 v12, 0x0

    .local v12, pkgInfo:Landroid/content/pm/PackageInfo;
    const/16 v20, 0x0

    :try_start_0
    move-object/from16 v0, p3

    move-object v1, v10

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v12

    :goto_4
    const/4 v5, 0x0

    .local v5, appInfo:Landroid/content/pm/ApplicationInfo;
    if-eqz v12, :cond_c

    iget-object v5, v12, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    :cond_c
    const/4 v9, 0x0

    .local v9, loaded:Ljava/lang/String;
    if-eqz v5, :cond_d

    move-object v0, v5

    move-object/from16 v1, p3

    invoke-virtual {v0, v1}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v9

    :cond_d
    if-eqz v9, :cond_e

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v20

    if-lez v20, :cond_e

    move-object/from16 v20, v9

    :goto_5
    move-object/from16 v0, v20

    move-object v1, v8

    iput-object v0, v1, Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;->name:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mTimeLines:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    move-object v1, v8

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_3

    :cond_e
    move-object/from16 v20, v10

    goto :goto_5

    .end local v5           #appInfo:Landroid/content/pm/ApplicationInfo;
    .end local v8           #item:Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;
    .end local v9           #loaded:Ljava/lang/String;
    .end local v10           #name:Ljava/lang/String;
    .end local v12           #pkgInfo:Landroid/content/pm/PackageInfo;
    .end local v13           #pkgWk:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/IHistoryTimeline;>;"
    .end local v14           #rec:Landroid/os/BatteryStats$HistoryItem;
    .end local v19           #shouldBeAdded:Z
    :cond_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x0

    cmp-long v20, v20, v22

    if-nez v20, :cond_10

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    :cond_10
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    move-wide/from16 v22, v0

    cmp-long v20, v20, v22

    if-gtz v20, :cond_11

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    move-wide/from16 v20, v0

    const-wide/16 v22, 0x1

    add-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    :cond_11
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistStart:J

    move-wide/from16 v20, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->mHistEnd:J

    move-wide/from16 v22, v0

    move-object/from16 v0, p0

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/WakeLockDetailsChart;->adjustStartEndTime(JJ)V

    return-void

    .restart local v8       #item:Lcom/android/settings/fuelgauge/WakeLockDetailsChart$Item;
    .restart local v10       #name:Ljava/lang/String;
    .restart local v12       #pkgInfo:Landroid/content/pm/PackageInfo;
    .restart local v13       #pkgWk:Ljava/util/Map$Entry;,"Ljava/util/Map$Entry<Ljava/lang/String;+Landroid/os/IHistoryTimeline;>;"
    .restart local v14       #rec:Landroid/os/BatteryStats$HistoryItem;
    .restart local v19       #shouldBeAdded:Z
    :catch_0
    move-exception v20

    goto/16 :goto_4

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
    .end packed-switch
.end method
