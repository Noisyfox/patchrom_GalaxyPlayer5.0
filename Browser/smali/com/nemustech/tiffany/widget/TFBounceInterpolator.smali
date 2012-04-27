.class public Lcom/nemustech/tiffany/widget/TFBounceInterpolator;
.super Ljava/lang/Object;
.source "TFBounceInterpolator.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    return-void
.end method


# virtual methods
.method public compute(ZF)F
    .locals 3
    .parameter "isStartFromDrag"
    .parameter "t"

    .prologue
    const/high16 v2, 0x3f80

    .line 46
    const/4 v0, 0x0

    .line 48
    .local v0, ret:F
    if-eqz p1, :cond_1

    .line 49
    sub-float/2addr p2, v2

    neg-float v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float v0, v1, p2

    .line 58
    :goto_0
    cmpl-float v1, v0, v2

    if-lez v1, :cond_3

    .line 59
    const/high16 v0, 0x3f80

    .line 63
    :cond_0
    :goto_1
    if-eqz p1, :cond_4

    .line 64
    sub-float v1, v2, v0

    .line 66
    :goto_2
    return v1

    .line 51
    :cond_1
    const/high16 v1, 0x3f00

    cmpg-float v1, p2, v1

    if-gez v1, :cond_2

    .line 52
    const/high16 v1, 0x4000

    mul-float/2addr v1, p2

    sub-float p2, v1, v2

    mul-float v1, p2, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    add-float v0, v1, v2

    goto :goto_0

    .line 54
    :cond_2
    const/high16 v1, 0x3fc0

    sub-float/2addr p2, v1

    neg-float v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float/2addr v1, p2

    mul-float v0, v1, p2

    goto :goto_0

    .line 60
    :cond_3
    const/4 v1, 0x0

    cmpg-float v1, v0, v1

    if-gez v1, :cond_0

    .line 61
    const/4 v0, 0x0

    goto :goto_1

    :cond_4
    move v1, v0

    .line 66
    goto :goto_2
.end method
