.class public Lcom/miui/camera/ui/CameraFrameLayout;
.super Landroid/widget/FrameLayout;
.source "CameraFrameLayout.java"


# instance fields
.field private mAnimationInProgress:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 30
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 31
    return-void
.end method


# virtual methods
.method public invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;
    .locals 1
    .parameter "location"
    .parameter "dirty"

    .prologue
    .line 34
    iget-boolean v0, p0, Lcom/miui/camera/ui/CameraFrameLayout;->mAnimationInProgress:Z

    if-eqz v0, :cond_0

    .line 36
    invoke-virtual {p0}, Lcom/miui/camera/ui/CameraFrameLayout;->invalidate()V

    .line 38
    :cond_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->invalidateChildInParent([ILandroid/graphics/Rect;)Landroid/view/ViewParent;

    move-result-object v0

    return-object v0
.end method

.method public setAnimationInProgress(Z)V
    .locals 0
    .parameter "mAnimationInProgress"

    .prologue
    .line 18
    iput-boolean p1, p0, Lcom/miui/camera/ui/CameraFrameLayout;->mAnimationInProgress:Z

    .line 19
    return-void
.end method
