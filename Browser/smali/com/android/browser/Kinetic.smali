.class public Lcom/android/browser/Kinetic;
.super Ljava/lang/Object;
.source "Kinetic.java"


# static fields
.field public static final SIN_BASE:D

.field public static final SIN_EXT:D

.field public static final SIN_TOP:D

.field static last:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 24
    const-wide v0, 0x3ff41b2f769cf0e0L

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/browser/Kinetic;->SIN_BASE:D

    .line 25
    const-wide v0, 0x3ff921fb54442d18L

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    sput-wide v0, Lcom/android/browser/Kinetic;->SIN_TOP:D

    .line 26
    const-wide/high16 v0, 0x3ff0

    sget-wide v2, Lcom/android/browser/Kinetic;->SIN_BASE:D

    sub-double/2addr v0, v2

    sput-wide v0, Lcom/android/browser/Kinetic;->SIN_EXT:D

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPosDecel(JJII)I
    .locals 5
    .parameter "period"
    .parameter "elapsed"
    .parameter "startPos"
    .parameter "endPos"

    .prologue
    .line 103
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gtz v3, :cond_0

    move v3, p4

    .line 112
    :goto_0
    return v3

    .line 105
    :cond_0
    cmp-long v3, p2, p0

    if-ltz v3, :cond_1

    move v3, p5

    .line 106
    goto :goto_0

    .line 108
    :cond_1
    const/16 v0, 0x2710

    .line 109
    .local v0, distance:I
    long-to-int v3, p0

    long-to-int v4, p2

    invoke-static {v3, v4, v0}, Lcom/android/browser/Kinetic;->getScrollPosDecelFromBottom(III)I

    move-result v3

    int-to-float v1, v3

    .line 110
    .local v1, move:F
    int-to-float v3, v0

    div-float v2, v1, v3

    .line 112
    .local v2, ratio:F
    int-to-float v3, p4

    const/high16 v4, 0x3f80

    sub-float/2addr v4, v2

    mul-float/2addr v3, v4

    int-to-float v4, p5

    mul-float/2addr v4, v2

    add-float/2addr v3, v4

    float-to-int v3, v3

    goto :goto_0
.end method

.method public static getScaleDecel(JJFF)F
    .locals 5
    .parameter "period"
    .parameter "elapsed"
    .parameter "startScale"
    .parameter "endScale"

    .prologue
    .line 86
    const-wide/16 v3, 0x0

    cmp-long v3, p2, v3

    if-gtz v3, :cond_0

    move v3, p4

    .line 95
    :goto_0
    return v3

    .line 88
    :cond_0
    cmp-long v3, p2, p0

    if-ltz v3, :cond_1

    move v3, p5

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    const/16 v0, 0x2710

    .line 92
    .local v0, distance:I
    long-to-int v3, p0

    long-to-int v4, p2

    invoke-static {v3, v4, v0}, Lcom/android/browser/Kinetic;->getScrollPosDecelFromBottom(III)I

    move-result v3

    int-to-float v1, v3

    .line 93
    .local v1, move:F
    int-to-float v3, v0

    div-float v2, v1, v3

    .line 95
    .local v2, ratio:F
    const/high16 v3, 0x3f80

    sub-float/2addr v3, v2

    mul-float/2addr v3, p4

    mul-float v4, p5, v2

    add-float/2addr v3, v4

    goto :goto_0
.end method

.method public static getScrollPos(III)I
    .locals 1
    .parameter "period"
    .parameter "elapsed"
    .parameter "distance"

    .prologue
    .line 42
    invoke-static {p0, p1, p2}, Lcom/android/browser/Kinetic;->getScrollPos2(III)I

    move-result v0

    .line 44
    .local v0, val:I
    sput v0, Lcom/android/browser/Kinetic;->last:I

    .line 45
    return v0
.end method

.method private static getScrollPos2(III)I
    .locals 10
    .parameter "period"
    .parameter "elapsed"
    .parameter "distance"

    .prologue
    .line 30
    if-lt p1, p0, :cond_0

    move v4, p2

    .line 37
    :goto_0
    return v4

    .line 34
    :cond_0
    const-wide v4, 0x3ff41b2f769cf0e0L

    int-to-double v6, p1

    int-to-double v8, p0

    div-double/2addr v6, v8

    const-wide v8, 0x3fd41b2f769cf0e0L

    mul-double/2addr v6, v8

    add-double v0, v4, v6

    .line 35
    .local v0, x:D
    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    sget-wide v6, Lcom/android/browser/Kinetic;->SIN_BASE:D

    sub-double/2addr v4, v6

    sget-wide v6, Lcom/android/browser/Kinetic;->SIN_EXT:D

    div-double v2, v4, v6

    .line 37
    .local v2, y:D
    int-to-double v4, p2

    mul-double/2addr v4, v2

    double-to-int v4, v4

    goto :goto_0
.end method

.method public static getScrollPosDecelFromBottom(III)I
    .locals 1
    .parameter "period"
    .parameter "elapsed"
    .parameter "distance"

    .prologue
    .line 50
    invoke-static {p0, p1, p2}, Lcom/android/browser/Kinetic;->getScrollPos(III)I

    move-result v0

    .line 51
    .local v0, d:I
    return v0
.end method
