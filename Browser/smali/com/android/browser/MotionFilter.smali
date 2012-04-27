.class Lcom/android/browser/MotionFilter;
.super Ljava/lang/Object;
.source "MotionFilter.java"


# static fields
.field private static MAX_CONV_STEPS:F

.field private static MIN_CONV_STEPS:F


# instance fields
.field mDestX:F

.field mDestY:F

.field mLastDestX:F

.field mLastDestY:F

.field mMoved:Z

.field mNewXY:[I

.field mPosX:F

.field mPosY:F


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    const v0, 0x400ccccd

    sput v0, Lcom/android/browser/MotionFilter;->MAX_CONV_STEPS:F

    .line 10
    const v0, 0x3f99999a

    sput v0, Lcom/android/browser/MotionFilter;->MIN_CONV_STEPS:F

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    const/4 v0, 0x2

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/android/browser/MotionFilter;->mNewXY:[I

    return-void
.end method

.method private move()V
    .locals 19

    .prologue
    .line 58
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/browser/MotionFilter;->mMoved:Z

    move/from16 v16, v0

    if-nez v16, :cond_0

    .line 60
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mDestX:F

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/MotionFilter;->mPosX:F

    .line 61
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mDestY:F

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/MotionFilter;->mPosY:F

    .line 62
    const/16 v16, 0x1

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/browser/MotionFilter;->mMoved:Z

    .line 116
    :goto_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mDestX:F

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/MotionFilter;->mLastDestX:F

    .line 117
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mDestY:F

    move/from16 v16, v0

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/MotionFilter;->mLastDestY:F

    .line 118
    return-void

    .line 64
    :cond_0
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mDestX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mLastDestX:F

    move/from16 v17, v0

    sub-float v10, v16, v17

    .line 65
    .local v10, lastMoveX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mDestY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mLastDestY:F

    move/from16 v17, v0

    sub-float v11, v16, v17

    .line 66
    .local v11, lastMoveY:F
    mul-float v16, v10, v10

    mul-float v17, v11, v11

    add-float v9, v16, v17

    .line 68
    .local v9, lastMoveSQ:F
    const v16, 0x4ebebc20

    cmpl-float v16, v9, v16

    if-lez v16, :cond_1

    .line 78
    :cond_1
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mDestX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mPosX:F

    move/from16 v17, v0

    sub-float v7, v16, v17

    .line 79
    .local v7, distX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mDestY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mPosY:F

    move/from16 v17, v0

    sub-float v8, v16, v17

    .line 80
    .local v8, distY:F
    mul-float v16, v7, v7

    mul-float v17, v8, v8

    add-float v6, v16, v17

    .line 82
    .local v6, distSQ:F
    cmpl-float v16, v9, v6

    if-lez v16, :cond_2

    move v14, v9

    .line 84
    .local v14, movedSQ:F
    :goto_1
    sget v12, Lcom/android/browser/MotionFilter;->MAX_CONV_STEPS:F

    .line 85
    .local v12, max_conv:F
    sget v13, Lcom/android/browser/MotionFilter;->MIN_CONV_STEPS:F

    .line 96
    .local v13, min_conv:F
    const v15, 0x4ebebc20

    .line 97
    .local v15, rangesq:F
    cmpl-float v16, v14, v15

    if-ltz v16, :cond_3

    .line 98
    move v2, v13

    .line 106
    .local v2, conv_steps:F
    :goto_2
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mDestX:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mPosX:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    div-float v4, v16, v2

    .line 107
    .local v4, deltaX:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mDestY:F

    move/from16 v16, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mPosY:F

    move/from16 v17, v0

    sub-float v16, v16, v17

    div-float v5, v16, v2

    .line 109
    .local v5, deltaY:F
    mul-float v16, v4, v4

    mul-float v17, v5, v5

    add-float v3, v16, v17

    .line 111
    .local v3, deltaSQ:F
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mPosX:F

    move/from16 v16, v0

    add-float v16, v16, v4

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/MotionFilter;->mPosX:F

    .line 112
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/browser/MotionFilter;->mPosY:F

    move/from16 v16, v0

    add-float v16, v16, v5

    move/from16 v0, v16

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/browser/MotionFilter;->mPosY:F

    goto/16 :goto_0

    .end local v2           #conv_steps:F
    .end local v3           #deltaSQ:F
    .end local v4           #deltaX:F
    .end local v5           #deltaY:F
    .end local v12           #max_conv:F
    .end local v13           #min_conv:F
    .end local v14           #movedSQ:F
    .end local v15           #rangesq:F
    :cond_2
    move v14, v6

    .line 82
    goto :goto_1

    .line 100
    .restart local v12       #max_conv:F
    .restart local v13       #min_conv:F
    .restart local v14       #movedSQ:F
    .restart local v15       #rangesq:F
    :cond_3
    sub-float v16, v12, v13

    const v17, 0x3fc90fdb

    mul-float v17, v17, v14

    const v18, 0x4ebebc20

    div-float v17, v17, v18

    invoke-static/range {v17 .. v17}, Landroid/util/FloatMath;->sin(F)F

    move-result v17

    mul-float v16, v16, v17

    sub-float v2, v12, v16

    .restart local v2       #conv_steps:F
    goto :goto_2
.end method

.method static setParams()V
    .locals 2

    .prologue
    .line 13
    const-string v1, "debug.browser.motionfilter"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 14
    .local v0, conf:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 15
    const-string v0, "2"

    .line 18
    :cond_0
    :try_start_0
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 41
    :goto_0
    return-void

    .line 20
    :pswitch_0
    const v1, 0x40333333

    sput v1, Lcom/android/browser/MotionFilter;->MAX_CONV_STEPS:F

    .line 21
    const v1, 0x3f99999a

    sput v1, Lcom/android/browser/MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 40
    :catch_0
    move-exception v1

    goto :goto_0

    .line 24
    :pswitch_1
    const v1, 0x400ccccd

    sput v1, Lcom/android/browser/MotionFilter;->MAX_CONV_STEPS:F

    .line 25
    const v1, 0x3f99999a

    sput v1, Lcom/android/browser/MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 28
    :pswitch_2
    const v1, 0x3fe66666

    sput v1, Lcom/android/browser/MotionFilter;->MAX_CONV_STEPS:F

    .line 29
    const v1, 0x3f8ccccd

    sput v1, Lcom/android/browser/MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 32
    :pswitch_3
    const v1, 0x3fa66666

    sput v1, Lcom/android/browser/MotionFilter;->MAX_CONV_STEPS:F

    .line 33
    const v1, 0x3f866666

    sput v1, Lcom/android/browser/MotionFilter;->MIN_CONV_STEPS:F

    goto :goto_0

    .line 36
    :pswitch_4
    const/high16 v1, 0x3f80

    sput v1, Lcom/android/browser/MotionFilter;->MAX_CONV_STEPS:F

    .line 37
    const/high16 v1, 0x3f80

    sput v1, Lcom/android/browser/MotionFilter;->MIN_CONV_STEPS:F
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 18
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method


# virtual methods
.method public filter(F)F
    .locals 1
    .parameter "val"

    .prologue
    .line 164
    iput p1, p0, Lcom/android/browser/MotionFilter;->mDestX:F

    .line 165
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/MotionFilter;->mDestY:F

    .line 166
    invoke-direct {p0}, Lcom/android/browser/MotionFilter;->move()V

    .line 167
    iget v0, p0, Lcom/android/browser/MotionFilter;->mPosX:F

    return v0
.end method

.method public filter([I)V
    .locals 3
    .parameter "xy"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 140
    aget v0, p1, v1

    int-to-float v0, v0

    iput v0, p0, Lcom/android/browser/MotionFilter;->mDestX:F

    .line 141
    aget v0, p1, v2

    int-to-float v0, v0

    iput v0, p0, Lcom/android/browser/MotionFilter;->mDestY:F

    .line 142
    invoke-direct {p0}, Lcom/android/browser/MotionFilter;->move()V

    .line 144
    iget v0, p0, Lcom/android/browser/MotionFilter;->mPosX:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p1, v1

    .line 145
    iget v0, p0, Lcom/android/browser/MotionFilter;->mPosY:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    aput v0, p1, v2

    .line 146
    return-void
.end method

.method public reset(F)V
    .locals 1
    .parameter "initX"

    .prologue
    .line 132
    invoke-static {}, Lcom/android/browser/MotionFilter;->setParams()V

    .line 133
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/browser/MotionFilter;->mMoved:Z

    .line 134
    iput p1, p0, Lcom/android/browser/MotionFilter;->mDestX:F

    .line 135
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/browser/MotionFilter;->mDestY:F

    .line 136
    invoke-direct {p0}, Lcom/android/browser/MotionFilter;->move()V

    .line 137
    return-void
.end method

.method public reset([I)V
    .locals 1
    .parameter "initXY"

    .prologue
    const/4 v0, 0x0

    .line 125
    invoke-static {}, Lcom/android/browser/MotionFilter;->setParams()V

    .line 126
    iput-boolean v0, p0, Lcom/android/browser/MotionFilter;->mMoved:Z

    .line 127
    aget v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/browser/MotionFilter;->mDestX:F

    .line 128
    const/4 v0, 0x1

    aget v0, p1, v0

    int-to-float v0, v0

    iput v0, p0, Lcom/android/browser/MotionFilter;->mDestY:F

    .line 129
    invoke-direct {p0}, Lcom/android/browser/MotionFilter;->move()V

    .line 130
    return-void
.end method
