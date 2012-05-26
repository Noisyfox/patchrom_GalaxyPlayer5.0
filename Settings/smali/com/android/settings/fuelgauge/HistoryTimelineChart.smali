.class public Lcom/android/settings/fuelgauge/HistoryTimelineChart;
.super Landroid/view/View;
.source "HistoryTimelineChart.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;,
        Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;
    }
.end annotation


# instance fields
.field final mChargingPaint:Landroid/graphics/Paint;

.field final mChargingPath:Landroid/graphics/Path;

.field final mGpsOnPaint:Landroid/graphics/Paint;

.field final mGpsOnPath:Landroid/graphics/Path;

.field mHaveGps:Z

.field mHaveWifi:Z

.field mHistEnd:J

.field mHistStart:J

.field mNumHist:I

.field final mPhoneSignalChart:Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;

.field mPhoneSignalLabel:Ljava/lang/String;

.field mPhoneSignalOffset:I

.field final mScreenOnPaint:Landroid/graphics/Paint;

.field final mScreenOnPath:Landroid/graphics/Path;

.field private mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

.field mStats:Landroid/os/IHistoryTimeline;

.field final mTextPaint:Landroid/text/TextPaint;

.field final mThinLinePaint:Landroid/graphics/Paint;

.field private mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

.field final mTitleTextPaint:Landroid/text/TextPaint;

.field mTotalDurationString:Ljava/lang/String;

.field final mWakeLockPaint:Landroid/graphics/Paint;

.field final mWakeLockPath:Landroid/graphics/Path;

.field final mWifiRunningPaint:Landroid/graphics/Paint;

.field final mWifiRunningPath:Landroid/graphics/Path;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x1060049

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mChargingPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mScreenOnPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mGpsOnPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWakeLockPaint:Landroid/graphics/Paint;

    new-instance v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTitleTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mThinLinePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mChargingPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mScreenOnPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mGpsOnPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWifiRunningPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWakeLockPath:Landroid/graphics/Path;

    new-instance v0, Lcom/android/settings/fuelgauge/TimeScale;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/TimeScale;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mChargingPaint:Landroid/graphics/Paint;

    const/16 v1, 0xff

    const/16 v2, 0x80

    invoke-virtual {v0, v1, v3, v2, v3}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mChargingPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mScreenOnPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mGpsOnPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWakeLockPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;

    const/4 v1, 0x7

    new-array v1, v1, [I

    fill-array-data v1, :array_0

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->setColors([I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getCompatibilityInfo()Landroid/content/res/CompatibilityInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/res/CompatibilityInfo;->applicationScale:F

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setCompatibilityScaling(F)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x4160

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTitleTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x4180

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mThinLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mThinLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x106004c

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void

    :array_0
    .array-data 0x4
        0x33t 0x33t 0x33t 0xfft
        0xb7t 0x85t 0x37t 0xfft
        0x0t 0x49t 0xddt 0xfft
        0x0t 0x9ct 0xfft 0xfft
        0x0t 0xbat 0xfft 0xfft
        0x0t 0xb1t 0xabt 0xfft
        0xet 0x96t 0x0t 0xfft
    .end array-data
.end method


# virtual methods
.method adjustStartEndTime(JJ)V
    .locals 5
    .parameter "start"
    .parameter "end"

    .prologue
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    iput-wide p3, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTotalDurationString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/TimeScale;->init(JJ)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->requestLayout()V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->invalidate()V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStats:Landroid/os/IHistoryTimeline;

    if-nez v0, :cond_0

    :goto_0
    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getWidth()I

    move-result v11

    .local v11, width:I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getHeight()I

    move-result v8

    .local v8, height:I
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTotalDurationString:Ljava/lang/String;

    const/high16 v1, 0x4120

    const/high16 v2, 0x4160

    iget-object v3, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTitleTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const/4 v9, 0x0

    .local v9, j:I
    :goto_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    array-length v0, v0

    if-ge v9, v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    aget-object v6, v0, v9

    .local v6, band:Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;
    if-eqz v6, :cond_1

    invoke-virtual {v6, p1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_1

    .end local v6           #band:Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;
    :cond_2
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalLabel:Ljava/lang/String;

    const/high16 v1, 0x4120

    iget v2, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalOffset:I

    add-int/lit8 v2, v2, 0xe

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;

    iget v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalOffset:I

    add-int/lit8 v1, v1, 0x13

    const/16 v2, 0x14

    invoke-virtual {v0, p1, v1, v2}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->draw(Landroid/graphics/Canvas;II)V

    iget-object v5, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mThinLinePaint:Landroid/graphics/Paint;

    .local v5, paint:Landroid/graphics/Paint;
    const/16 v10, 0x14

    .local v10, top:I
    const/16 v0, 0xf

    sub-int v7, v8, v0

    .local v7, bottom:I
    const/4 v1, 0x0

    int-to-float v2, v7

    int-to-float v3, v11

    int-to-float v4, v7

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

    int-to-float v4, v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    int-to-float v2, v10

    const/4 v3, 0x0

    int-to-float v4, v7

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    invoke-virtual {v0, p1, v7, v11}, Lcom/android/settings/fuelgauge/TimeScale;->draw(Landroid/graphics/Canvas;II)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 5
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStats:Landroid/os/IHistoryTimeline;

    if-nez v1, :cond_0

    :goto_0
    return-void

    :cond_0
    iget-boolean v1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHaveGps:Z

    if-eqz v1, :cond_1

    move v1, v4

    :goto_1
    add-int/lit8 v1, v1, 0x3

    iget-boolean v2, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHaveWifi:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    add-int v0, v1, v2

    .local v0, num:I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getSuggestedMinimumWidth()I

    move-result v1

    invoke-static {v1, p1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getDefaultSize(II)I

    move-result v1

    mul-int/lit8 v2, v0, 0x22

    add-int/lit8 v2, v2, 0x2d

    add-int/lit8 v2, v2, 0x2c

    invoke-virtual {p0, v1, v2}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->setMeasuredDimension(II)V

    goto :goto_0

    .end local v0           #num:I
    :cond_1
    move v1, v3

    goto :goto_1

    :cond_2
    move v2, v3

    goto :goto_2
.end method

.method protected onSizeChanged(IIII)V
    .locals 24
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStats:Landroid/os/IHistoryTimeline;

    move-object/from16 v19, v0

    if-nez v19, :cond_0

    :goto_0
    return-void

    :cond_0
    const/16 v16, 0x14

    .local v16, wakeLockOffset:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    const/16 v21, 0x20

    const/16 v22, 0x40

    const/16 v23, 0xff

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x4120

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWakeLockPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    const/16 v21, 0x20

    const/16 v22, 0x40

    const/16 v23, 0xff

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    const/16 v21, 0x20

    const/16 v22, 0x40

    const/16 v23, 0xff

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/16 v20, 0xff

    const/16 v21, 0x20

    const/16 v22, 0x40

    const/16 v23, 0xff

    invoke-virtual/range {v19 .. v23}, Landroid/graphics/Paint;->setARGB(IIII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v19, v0

    const/high16 v20, 0x3f80

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x4120

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x4120

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x4120

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object/from16 v19, v0

    const/high16 v20, 0x4120

    invoke-virtual/range {v19 .. v20}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    add-int/lit8 v6, v16, 0x22

    .local v6, chargingOffset:I
    add-int/lit8 v11, v6, 0x22

    .local v11, screenOnOffset:I
    add-int/lit8 v17, v11, 0x22

    .local v17, wifiRunningOffset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHaveWifi:Z

    move/from16 v19, v0

    if-eqz v19, :cond_5

    const/16 v19, 0x22

    :goto_1
    add-int/lit8 v7, v19, 0x7a

    .local v7, gpsOnOffset:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHaveGps:Z

    move/from16 v19, v0

    if-eqz v19, :cond_6

    const/16 v19, 0x22

    :goto_2
    add-int v19, v19, v7

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalOffset:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->init(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mScreenOnPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mGpsOnPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWifiRunningPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mChargingPath:Landroid/graphics/Path;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->setY(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move v1, v6

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->setY(I)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    move-object/from16 v19, v0

    const/16 v20, 0x2

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move v1, v11

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->setY(I)V

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHaveGps:Z

    move/from16 v19, v0

    if-eqz v19, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    move-object/from16 v19, v0

    const/16 v20, 0x3

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move v1, v7

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->setY(I)V

    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHaveWifi:Z

    move/from16 v19, v0

    if-eqz v19, :cond_2

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    move-object/from16 v19, v0

    const/16 v20, 0x4

    aget-object v19, v19, v20

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->setY(I)V

    :cond_2
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    move-wide v14, v0

    .local v14, timeStart:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    move-wide/from16 v19, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    move-wide/from16 v21, v0

    sub-long v12, v19, v21

    .local v12, timeChange:J
    const/16 v18, 0x0

    .local v18, x:I
    const/4 v8, 0x0

    .local v8, i:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mNumHist:I

    move v3, v0

    .local v3, N:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStats:Landroid/os/IHistoryTimeline;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Landroid/os/IHistoryTimeline;->startIteratingHistoryLocked()Z

    move-result v19

    if-eqz v19, :cond_a

    new-instance v10, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v10}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v10, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStats:Landroid/os/IHistoryTimeline;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object v1, v10

    invoke-interface {v0, v1}, Landroid/os/IHistoryTimeline;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v19

    if-eqz v19, :cond_a

    if-ge v8, v3, :cond_a

    add-int/lit8 v8, v8, 0x1

    move-object v0, v10

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v19, v0

    if-nez v19, :cond_3

    move-object v0, v10

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v19, v0

    sub-long v19, v19, v14

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v21, v0

    mul-long v19, v19, v21

    div-long v19, v19, v12

    move-wide/from16 v0, v19

    long-to-int v0, v0

    move/from16 v18, v0

    const/4 v9, 0x0

    .local v9, j:I
    :goto_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_7

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    move-object/from16 v19, v0

    aget-object v4, v19, v9

    .local v4, band:Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;
    if-eqz v4, :cond_4

    move-object v0, v10

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v19, v0

    move-object v0, v4

    move/from16 v1, v19

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->onState(II)V

    :cond_4
    add-int/lit8 v9, v9, 0x1

    goto :goto_4

    .end local v3           #N:I
    .end local v4           #band:Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;
    .end local v7           #gpsOnOffset:I
    .end local v8           #i:I
    .end local v9           #j:I
    .end local v10           #rec:Landroid/os/BatteryStats$HistoryItem;
    .end local v12           #timeChange:J
    .end local v14           #timeStart:J
    .end local v18           #x:I
    :cond_5
    const/16 v19, 0x0

    goto/16 :goto_1

    .restart local v7       #gpsOnOffset:I
    :cond_6
    const/16 v19, 0x0

    goto/16 :goto_2

    .restart local v3       #N:I
    .restart local v8       #i:I
    .restart local v9       #j:I
    .restart local v10       #rec:Landroid/os/BatteryStats$HistoryItem;
    .restart local v12       #timeChange:J
    .restart local v14       #timeStart:J
    .restart local v18       #x:I
    :cond_7
    move-object v0, v10

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xf00

    move/from16 v19, v0

    shr-int/lit8 v19, v19, 0x8

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_8

    const/4 v5, 0x0

    .local v5, bin:I
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    move v2, v5

    invoke-virtual {v0, v1, v2}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->addTick(II)V

    goto/16 :goto_3

    .end local v5           #bin:I
    :cond_8
    move-object v0, v10

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v19, v0

    const/high16 v20, 0x400

    and-int v19, v19, v20

    if-eqz v19, :cond_9

    const/4 v5, 0x1

    .restart local v5       #bin:I
    goto :goto_5

    .end local v5           #bin:I
    :cond_9
    move-object v0, v10

    iget v0, v0, Landroid/os/BatteryStats$HistoryItem;->states:I

    move/from16 v19, v0

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xf0

    move/from16 v19, v0

    shr-int/lit8 v5, v19, 0x4

    .restart local v5       #bin:I
    add-int/lit8 v5, v5, 0x2

    goto :goto_5

    .end local v5           #bin:I
    .end local v9           #j:I
    .end local v10           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_a
    const/4 v9, 0x0

    .restart local v9       #j:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    move v0, v9

    move/from16 v1, v19

    if-ge v0, v1, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    move-object/from16 v19, v0

    aget-object v4, v19, v9

    .restart local v4       #band:Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;
    if-eqz v4, :cond_b

    move-object v0, v4

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;->end(I)V

    :cond_b
    add-int/lit8 v9, v9, 0x1

    goto :goto_6

    .end local v4           #band:Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalChart:Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$ChartData;->finish(I)V

    goto/16 :goto_0
.end method

.method setTimeline(Landroid/os/IHistoryTimeline;)V
    .locals 10
    .parameter "timeline"

    .prologue
    iput-object p1, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStats:Landroid/os/IHistoryTimeline;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090339

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mPhoneSignalLabel:Ljava/lang/String;

    const/4 v8, 0x0

    .local v8, pos:I
    const/4 v6, 0x0

    .local v6, aggrStates:I
    const/4 v7, 0x1

    .local v7, first:Z
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStats:Landroid/os/IHistoryTimeline;

    invoke-interface {v0}, Landroid/os/IHistoryTimeline;->startIteratingHistoryLocked()Z

    move-result v0

    if-eqz v0, :cond_2

    new-instance v9, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v9}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v9, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStats:Landroid/os/IHistoryTimeline;

    invoke-interface {v0, v9}, Landroid/os/IHistoryTimeline;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v0

    if-eqz v0, :cond_2

    add-int/lit8 v8, v8, 0x1

    iget-byte v0, v9, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v0, :cond_0

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    iget-wide v0, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    :cond_1
    iget-wide v0, v9, Landroid/os/BatteryStats$HistoryItem;->time:J

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    iget v0, v9, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v6, v0

    goto :goto_0

    .end local v9           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_2
    iput v8, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mNumHist:I

    const/high16 v0, 0x1000

    and-int/2addr v0, v6

    if-eqz v0, :cond_5

    const/4 v0, 0x1

    :goto_1
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHaveGps:Z

    const/high16 v0, 0x100

    and-int/2addr v0, v6

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_2
    iput-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHaveWifi:Z

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090338

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, label:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    .end local v6           #aggrStates:I
    const/4 v7, 0x0

    new-instance v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    .end local v7           #first:Z
    const/high16 v2, 0x2

    iget-object v4, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWakeLockPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWakeLockPaint:Landroid/graphics/Paint;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;-><init>(Lcom/android/settings/fuelgauge/HistoryTimelineChart;ILjava/lang/String;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    aput-object v0, v6, v7

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090334

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    const/4 v7, 0x1

    new-instance v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    const/high16 v2, 0x4000

    iget-object v4, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mChargingPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mChargingPaint:Landroid/graphics/Paint;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;-><init>(Lcom/android/settings/fuelgauge/HistoryTimelineChart;ILjava/lang/String;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    aput-object v0, v6, v7

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090335

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    const/4 v7, 0x2

    new-instance v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    const/high16 v2, 0x2000

    iget-object v4, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mScreenOnPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mScreenOnPaint:Landroid/graphics/Paint;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;-><init>(Lcom/android/settings/fuelgauge/HistoryTimelineChart;ILjava/lang/String;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    aput-object v0, v6, v7

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090336

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    const/4 v7, 0x3

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHaveGps:Z

    if-eqz v0, :cond_7

    new-instance v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    const/high16 v2, 0x1000

    iget-object v4, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mGpsOnPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mGpsOnPaint:Landroid/graphics/Paint;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;-><init>(Lcom/android/settings/fuelgauge/HistoryTimelineChart;ILjava/lang/String;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_3
    aput-object v0, v6, v7

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f090337

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    iget-object v6, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mStateBands:[Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    const/4 v7, 0x4

    iget-boolean v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHaveWifi:Z

    if-eqz v0, :cond_8

    new-instance v0, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;

    const/high16 v2, 0x100

    iget-object v4, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWifiRunningPath:Landroid/graphics/Path;

    iget-object v5, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mWifiRunningPaint:Landroid/graphics/Paint;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/android/settings/fuelgauge/HistoryTimelineChart$StateBand;-><init>(Lcom/android/settings/fuelgauge/HistoryTimelineChart;ILjava/lang/String;Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :goto_4
    aput-object v0, v6, v7

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_3

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    :cond_3
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    cmp-long v0, v0, v2

    if-gtz v0, :cond_4

    iget-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    const-wide/16 v2, 0x1

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    :cond_4
    iget-wide v0, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistStart:J

    iget-wide v2, p0, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->mHistEnd:J

    invoke-virtual {p0, v0, v1, v2, v3}, Lcom/android/settings/fuelgauge/HistoryTimelineChart;->adjustStartEndTime(JJ)V

    return-void

    .end local v3           #label:Ljava/lang/String;
    .restart local v6       #aggrStates:I
    .restart local v7       #first:Z
    :cond_5
    const/4 v0, 0x0

    goto/16 :goto_1

    :cond_6
    const/4 v0, 0x0

    goto/16 :goto_2

    .end local v6           #aggrStates:I
    .end local v7           #first:Z
    .restart local v3       #label:Ljava/lang/String;
    :cond_7
    const/4 v0, 0x0

    goto :goto_3

    :cond_8
    const/4 v0, 0x0

    goto :goto_4
.end method
