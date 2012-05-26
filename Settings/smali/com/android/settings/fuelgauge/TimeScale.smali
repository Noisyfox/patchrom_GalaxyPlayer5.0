.class public Lcom/android/settings/fuelgauge/TimeScale;
.super Ljava/lang/Object;
.source "TimeScale.java"


# instance fields
.field private mHistEnd:J

.field private mHistStart:J

.field final mScaleTextPaint:Landroid/text/TextPaint;

.field final mThineLinePaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Landroid/text/TextPaint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/TimeScale;->mScaleTextPaint:Landroid/text/TextPaint;

    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/android/settings/fuelgauge/TimeScale;->mThineLinePaint:Landroid/graphics/Paint;

    return-void
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;II)V
    .locals 22
    .parameter "canvas"
    .parameter "y"
    .parameter "width"

    .prologue
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/TimeScale;->mHistEnd:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/TimeScale;->mHistStart:J

    move-wide v7, v0

    sub-long v13, v5, v7

    .local v13, period:J
    new-instance v11, Ljava/text/SimpleDateFormat;

    const-string v5, "H"

    invoke-direct {v11, v5}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .local v11, df:Ljava/text/SimpleDateFormat;
    const-wide/32 v5, 0x36ee80

    cmp-long v5, v13, v5

    if-lez v5, :cond_2

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/TimeScale;->mHistStart:J

    move-wide v5, v0

    const-wide/32 v7, 0x36ee80

    div-long/2addr v5, v7

    const-wide/32 v7, 0x36ee80

    mul-long/2addr v5, v7

    const-wide/32 v7, 0x36ee80

    add-long v15, v5, v7

    .local v15, roundStart:J
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/TimeScale;->mHistEnd:J

    move-wide v5, v0

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/TimeScale;->mHistStart:J

    move-wide v7, v0

    sub-long v19, v5, v7

    .local v19, timeChange:J
    :goto_0
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/TimeScale;->mHistEnd:J

    move-wide v5, v0

    cmp-long v5, v15, v5

    if-gez v5, :cond_2

    new-instance v5, Ljava/util/Date;

    move-object v0, v5

    move-wide v1, v15

    invoke-direct {v0, v1, v2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v11, v5}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v12

    .local v12, hour:Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/TimeScale;->mScaleTextPaint:Landroid/text/TextPaint;

    move-object v5, v0

    invoke-virtual {v5, v12}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F

    move-result v17

    .local v17, textWidth:F
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/settings/fuelgauge/TimeScale;->mHistStart:J

    move-wide v5, v0

    sub-long v5, v15, v5

    move/from16 v0, p3

    int-to-long v0, v0

    move-wide v7, v0

    mul-long/2addr v5, v7

    div-long v5, v5, v19

    move-wide v0, v5

    long-to-int v0, v0

    move/from16 v21, v0

    .local v21, x:I
    move/from16 v0, v21

    int-to-float v0, v0

    move v6, v0

    move/from16 v0, p2

    int-to-float v0, v0

    move v7, v0

    move/from16 v0, v21

    int-to-float v0, v0

    move v8, v0

    const/4 v5, 0x5

    sub-int v5, p2, v5

    int-to-float v9, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/TimeScale;->mThineLinePaint:Landroid/graphics/Paint;

    move-object v10, v0

    move-object/from16 v5, p1

    invoke-virtual/range {v5 .. v10}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V

    move/from16 v0, v21

    int-to-float v0, v0

    move v5, v0

    const/high16 v6, 0x4000

    div-float v6, v17, v6

    sub-float v18, v5, v6

    .local v18, textX:F
    const/4 v5, 0x0

    cmpg-float v5, v18, v5

    if-gez v5, :cond_1

    const/16 v18, 0x0

    :cond_0
    :goto_1
    add-int/lit8 v5, p2, 0xc

    int-to-float v5, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/settings/fuelgauge/TimeScale;->mScaleTextPaint:Landroid/text/TextPaint;

    move-object v6, v0

    move-object/from16 v0, p1

    move-object v1, v12

    move/from16 v2, v18

    move v3, v5

    move-object v4, v6

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    const-wide/32 v5, 0x36ee80

    add-long/2addr v15, v5

    goto :goto_0

    :cond_1
    add-float v5, v18, v17

    move/from16 v0, p3

    int-to-float v0, v0

    move v6, v0

    cmpl-float v5, v5, v6

    if-lez v5, :cond_0

    move/from16 v0, p3

    int-to-float v0, v0

    move v5, v0

    sub-float v18, v5, v17

    goto :goto_1

    .end local v12           #hour:Ljava/lang/String;
    .end local v15           #roundStart:J
    .end local v17           #textWidth:F
    .end local v18           #textX:F
    .end local v19           #timeChange:J
    .end local v21           #x:I
    :cond_2
    return-void
.end method

.method public init(JJ)V
    .locals 3
    .parameter "start"
    .parameter "end"

    .prologue
    iput-wide p1, p0, Lcom/android/settings/fuelgauge/TimeScale;->mHistStart:J

    iput-wide p3, p0, Lcom/android/settings/fuelgauge/TimeScale;->mHistEnd:J

    iget-object v0, p0, Lcom/android/settings/fuelgauge/TimeScale;->mScaleTextPaint:Landroid/text/TextPaint;

    const/high16 v1, 0x4140

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setTextSize(F)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/TimeScale;->mScaleTextPaint:Landroid/text/TextPaint;

    invoke-static {}, Landroid/content/res/Resources;->getSystem()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1060049

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setColor(I)V

    iget-object v0, p0, Lcom/android/settings/fuelgauge/TimeScale;->mThineLinePaint:Landroid/graphics/Paint;

    const/high16 v1, 0x3f80

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    return-void
.end method
