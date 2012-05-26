.class public Lcom/android/settings/fuelgauge/BatteryHistoryChart;
.super Landroid/view/View;
.source "BatteryHistoryChart.java"


# instance fields
.field final mBatCriticalPath:Landroid/graphics/Path;

.field final mBatGoodPath:Landroid/graphics/Path;

.field mBatHigh:I

.field mBatLow:I

.field final mBatWarnPath:Landroid/graphics/Path;

.field final mBatteryBackgroundPaint:Landroid/graphics/Paint;

.field final mBatteryCriticalPaint:Landroid/graphics/Paint;

.field final mBatteryGoodPaint:Landroid/graphics/Paint;

.field final mBatteryWarnPaint:Landroid/graphics/Paint;

.field mDurationString:Ljava/lang/String;

.field mDurationStringWidth:I

.field mHistEnd:J

.field mHistStart:J

.field mLevelBottom:I

.field mLevelTop:I

.field mLineWidth:I

.field mNumHist:I

.field mStats:Landroid/os/BatteryStats;

.field mStatsPeriod:J

.field mTextAscent:I

.field mTextDescent:I

.field final mTextPaint:Landroid/text/TextPaint;

.field final mThinLinePaint:Landroid/graphics/Paint;

.field mThinLineWidth:I

.field private mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

.field mTotalDurationString:Ljava/lang/String;

.field mTotalDurationStringWidth:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/16 v5, 0x80

    const/16 v4, 0xc8

    const/16 v3, 0xff

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/text/TextPaint;

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLinePaint:Landroid/graphics/Paint;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    new-instance v0, Lcom/android/settings/fuelgauge/TimeScale;

    invoke-direct {v0}, Lcom/android/settings/fuelgauge/TimeScale;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3, v4, v4, v4}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryBackgroundPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v2, v3, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v5, v3, v3, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    const/16 v1, 0xc0

    invoke-virtual {v0, v1, v3, v2, v2}, Landroid/graphics/Paint;->setARGB(IIII)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    iput v1, v0, Landroid/text/TextPaint;->density:F

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x4190

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLinePaint:Landroid/graphics/Paint;

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

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
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    iput-wide p3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    sub-long/2addr v1, v3

    long-to-double v1, v1

    invoke-static {v0, v1, v2}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    iget-wide v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    iget-wide v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/TimeScale;->init(JJ)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12
    .parameter "canvas"

    .prologue
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getWidth()I

    move-result v10

    .local v10, width:I
    invoke-virtual {p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getHeight()I

    move-result v7

    .local v7, height:I
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    const/4 v1, 0x0

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    neg-int v2, v2

    iget v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v2, v3

    int-to-float v2, v2

    iget-object v3, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_0
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_1
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    invoke-virtual {v0}, Landroid/graphics/Path;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    :cond_2
    iget-object v5, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLinePaint:Landroid/graphics/Paint;

    .local v5, paint:Landroid/graphics/Paint;
    iget v9, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    .local v9, top:I
    iget v6, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    .local v6, bottom:I
    const/4 v1, 0x0

    int-to-float v2, v6

    int-to-float v3, v10

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    int-to-float v2, v9

    int-to-float v3, v10

    int-to-float v4, v9

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v0, 0x1

    sub-int v0, v10, v0

    int-to-float v1, v0

    int-to-float v2, v9

    const/4 v0, 0x1

    sub-int v0, v10, v0

    int-to-float v3, v0

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v1, 0x0

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    int-to-float v2, v0

    const/4 v3, 0x0

    int-to-float v4, v6

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    const/16 v0, 0xa

    if-ge v8, v0, :cond_3

    iget v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    iget v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    iget v2, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    sub-int/2addr v1, v2

    mul-int/2addr v1, v8

    div-int/lit8 v1, v1, 0xa

    add-int v11, v0, v1

    .local v11, y:I
    const/4 v1, 0x0

    int-to-float v2, v11

    const/high16 v3, 0x40a0

    int-to-float v4, v11

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .end local v11           #y:I
    :cond_3
    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTimeScale:Lcom/android/settings/fuelgauge/TimeScale;

    invoke-virtual {v0, p1, v6, v10}, Lcom/android/settings/fuelgauge/TimeScale;->draw(Landroid/graphics/Canvas;II)V

    return-void
.end method

.method protected onMeasure(II)V
    .locals 2
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationStringWidth:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    iget-object v1, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationString:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTotalDurationStringWidth:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->ascent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    iget-object v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->descent()F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 29
    .parameter "w"
    .parameter "h"
    .parameter "oldw"
    .parameter "oldh"

    .prologue
    invoke-super/range {p0 .. p4}, Landroid/view/View;->onSizeChanged(IIII)V

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextDescent:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextAscent:I

    move/from16 v26, v0

    sub-int v16, v25, v26

    .local v16, textHeight:I
    const/16 v25, 0x1

    const/high16 v26, 0x4000

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getResources()Landroid/content/res/Resources;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v27

    invoke-static/range {v25 .. v27}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v25

    move/from16 v0, v25

    float-to-int v0, v0

    move/from16 v25, v0

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    div-int/lit8 v25, v16, 0x2

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move/from16 v25, v0

    add-int v25, v25, v16

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    move/from16 v25, v0

    if-gtz v25, :cond_0

    const/16 v25, 0x1

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLineWidth:I

    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mTextPaint:Landroid/text/TextPaint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/text/TextPaint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryGoodPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryWarnPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatteryCriticalPaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLineWidth:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mThinLinePaint:Landroid/graphics/Paint;

    move-object/from16 v25, v0

    const/high16 v26, 0x3f80

    invoke-virtual/range {v25 .. v26}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/graphics/Path;->reset()V

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v20, v0

    .local v20, timeStart:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide/from16 v25, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v27, v0

    sub-long v17, v25, v27

    .local v17, timeChange:J
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move v5, v0

    .local v5, batLow:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    move/from16 v25, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    move/from16 v26, v0

    sub-int v4, v25, v26

    .local v4, batChange:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move/from16 v25, v0

    sub-int v25, p2, v25

    const/16 v26, 0xf

    sub-int v11, v25, v26

    .local v11, levelh:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move/from16 v25, v0

    add-int v25, v25, v11

    move/from16 v0, v25

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelBottom:I

    const/4 v9, -0x1

    .local v9, lastX:I
    const/4 v10, -0x1

    .local v10, lastY:I
    const/4 v6, 0x0

    .local v6, i:I
    const/4 v7, 0x0

    .local v7, lastLinePath:Landroid/graphics/Path;
    const/4 v8, 0x0

    .local v8, lastPath:Landroid/graphics/Path;
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    move v3, v0

    .local v3, N:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v25, v0

    invoke-virtual/range {v25 .. v25}, Landroid/os/BatteryStats;->getHistoryTimeline()Landroid/os/IHistoryTimeline;

    move-result-object v19

    .local v19, timeLine:Landroid/os/IHistoryTimeline;
    invoke-interface/range {v19 .. v19}, Landroid/os/IHistoryTimeline;->startIteratingHistoryLocked()Z

    move-result v25

    if-eqz v25, :cond_8

    new-instance v15, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v15}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v15, rec:Landroid/os/BatteryStats$HistoryItem;
    const-wide/32 v12, 0x6cebb800

    .local v12, minTime:J
    :cond_1
    :goto_0
    move-object/from16 v0, v19

    move-object v1, v15

    invoke-interface {v0, v1}, Landroid/os/IHistoryTimeline;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v25

    if-eqz v25, :cond_7

    if-ge v6, v3, :cond_7

    move-object v0, v15

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    move/from16 v25, v0

    if-nez v25, :cond_1

    add-int/lit8 v6, v6, 0x1

    move-object v0, v15

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v25, v0

    cmp-long v25, v25, v12

    if-gez v25, :cond_2

    const-string v25, "BatteryHistoryChart"

    new-instance v26, Ljava/lang/StringBuilder;

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    const-string v27, "invalid time:"

    invoke-virtual/range {v26 .. v27}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v26

    move-object v0, v15

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v27, v0

    invoke-virtual/range {v26 .. v28}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v26

    invoke-static/range {v25 .. v26}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_2
    move-object v0, v15

    iget-wide v0, v0, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide/from16 v25, v0

    sub-long v25, v25, v20

    move/from16 v0, p1

    int-to-long v0, v0

    move-wide/from16 v27, v0

    mul-long v25, v25, v27

    div-long v25, v25, v17

    move-wide/from16 v0, v25

    long-to-int v0, v0

    move/from16 v23, v0

    .local v23, x:I
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mLevelTop:I

    move/from16 v25, v0

    add-int v25, v25, v11

    move-object v0, v15

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v26, v0

    sub-int v26, v26, v5

    const/16 v27, 0x1

    sub-int v27, v11, v27

    mul-int v26, v26, v27

    div-int v26, v26, v4

    sub-int v24, v25, v26

    .local v24, y:I
    move v0, v9

    move/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object v0, v15

    iget-byte v0, v0, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move/from16 v22, v0

    .local v22, value:B
    const/16 v25, 0xe

    move/from16 v0, v22

    move/from16 v1, v25

    if-gt v0, v1, :cond_4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatCriticalPath:Landroid/graphics/Path;

    move-object v14, v0

    .local v14, path:Landroid/graphics/Path;
    :goto_1
    if-eq v14, v7, :cond_6

    if-eqz v7, :cond_3

    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    move-object v0, v7

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    :cond_3
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    move-object v0, v14

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->moveTo(FF)V

    move-object v7, v14

    :goto_2
    move/from16 v9, v23

    move/from16 v10, v24

    move-object v8, v14

    goto/16 :goto_0

    .end local v14           #path:Landroid/graphics/Path;
    :cond_4
    const/16 v25, 0x1d

    move/from16 v0, v22

    move/from16 v1, v25

    if-gt v0, v1, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatWarnPath:Landroid/graphics/Path;

    move-object v14, v0

    .restart local v14       #path:Landroid/graphics/Path;
    goto :goto_1

    .end local v14           #path:Landroid/graphics/Path;
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatGoodPath:Landroid/graphics/Path;

    move-object v14, v0

    .restart local v14       #path:Landroid/graphics/Path;
    goto :goto_1

    :cond_6
    move/from16 v0, v23

    int-to-float v0, v0

    move/from16 v25, v0

    move/from16 v0, v24

    int-to-float v0, v0

    move/from16 v26, v0

    move-object v0, v14

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    goto :goto_2

    .end local v14           #path:Landroid/graphics/Path;
    .end local v22           #value:B
    .end local v23           #x:I
    .end local v24           #y:I
    :cond_7
    if-eqz v8, :cond_8

    move/from16 v0, p1

    int-to-float v0, v0

    move/from16 v25, v0

    move v0, v10

    int-to-float v0, v0

    move/from16 v26, v0

    move-object v0, v8

    move/from16 v1, v25

    move/from16 v2, v26

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Path;->lineTo(FF)V

    .end local v12           #minTime:J
    .end local v15           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_8
    return-void
.end method

.method setStats(Landroid/os/BatteryStats;)V
    .locals 20
    .parameter "stats"

    .prologue
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStats:Landroid/os/BatteryStats;

    move-object v15, v0

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v16

    const-wide/16 v18, 0x3e8

    mul-long v16, v16, v18

    const/16 v18, 0x3

    invoke-virtual/range {v15 .. v18}, Landroid/os/BatteryStats;->computeBatteryRealtime(JI)J

    move-result-wide v13

    .local v13, uSecTime:J
    move-wide v0, v13

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v15

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mStatsPeriod:J

    move-wide/from16 v16, v0

    const-wide/16 v18, 0x3e8

    div-long v16, v16, v18

    move-wide/from16 v0, v16

    long-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v15 .. v17}, Lcom/android/settings/fuelgauge/Utils;->formatElapsedTime(Landroid/content/Context;D)Ljava/lang/String;

    move-result-object v6

    .local v6, durationString:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->getContext()Landroid/content/Context;

    move-result-object v15

    const v16, 0x7f090331

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v6, v17, v18

    invoke-virtual/range {v15 .. v17}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    move-object v0, v15

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mDurationString:Ljava/lang/String;

    const/4 v10, 0x0

    .local v10, pos:I
    const/4 v8, 0x0

    .local v8, lastInteresting:I
    const/4 v9, -0x1

    .local v9, lastLevel:B
    const/4 v15, 0x0

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatLow:I

    const/16 v15, 0x64

    move v0, v15

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mBatHigh:I

    const/4 v5, 0x0

    .local v5, aggrStates:I
    const/4 v7, 0x1

    .local v7, first:Z
    invoke-virtual/range {p1 .. p1}, Landroid/os/BatteryStats;->getHistoryTimeline()Landroid/os/IHistoryTimeline;

    move-result-object v12

    .local v12, timeLine:Landroid/os/IHistoryTimeline;
    invoke-interface {v12}, Landroid/os/IHistoryTimeline;->startIteratingHistoryLocked()Z

    move-result v15

    if-eqz v15, :cond_4

    new-instance v11, Landroid/os/BatteryStats$HistoryItem;

    invoke-direct {v11}, Landroid/os/BatteryStats$HistoryItem;-><init>()V

    .local v11, rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_0
    :goto_0
    invoke-interface {v12, v11}, Landroid/os/IHistoryTimeline;->getNextHistoryLocked(Landroid/os/BatteryStats$HistoryItem;)Z

    move-result v15

    if-eqz v15, :cond_4

    add-int/lit8 v10, v10, 0x1

    iget-byte v15, v11, Landroid/os/BatteryStats$HistoryItem;->cmd:B

    if-nez v15, :cond_0

    if-eqz v7, :cond_1

    const/4 v7, 0x0

    iget-wide v15, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    :cond_1
    iget-byte v15, v11, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    if-ne v15, v9, :cond_2

    const/4 v15, 0x1

    if-ne v10, v15, :cond_3

    :cond_2
    iget-byte v9, v11, Landroid/os/BatteryStats$HistoryItem;->batteryLevel:B

    move v8, v10

    iget-wide v15, v11, Landroid/os/BatteryStats$HistoryItem;->time:J

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    :cond_3
    iget v15, v11, Landroid/os/BatteryStats$HistoryItem;->states:I

    or-int/2addr v5, v15

    goto :goto_0

    .end local v11           #rec:Landroid/os/BatteryStats$HistoryItem;
    :cond_4
    move v0, v8

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mNumHist:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v15

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide v15, v0

    const-wide/16 v17, 0x0

    cmp-long v15, v15, v17

    if-nez v15, :cond_5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide v15, v0

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    :cond_5
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide v15, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide/from16 v17, v0

    cmp-long v15, v15, v17

    if-gtz v15, :cond_6

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide v15, v0

    const-wide/16 v17, 0x1

    add-long v15, v15, v17

    move-wide v0, v15

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    :cond_6
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistStart:J

    move-wide v15, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->mHistEnd:J

    move-wide/from16 v17, v0

    move-object/from16 v0, p0

    move-wide v1, v15

    move-wide/from16 v3, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/settings/fuelgauge/BatteryHistoryChart;->adjustStartEndTime(JJ)V

    return-void
.end method
