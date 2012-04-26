.class public Lcom/miui/camera/LayoutSetting;
.super Ljava/lang/Object;
.source "LayoutSetting.java"


# instance fields
.field public final mBottomBarBg:I

.field public final mBottomBarHeight:I

.field public final mBottomBarTransparent:Z

.field public final mPreviewBottomMargin:I

.field public final mPreviewHeight:I

.field public final mPreviewWidth:I

.field public final mTopBarBg:I

.field public final mTopBarHeight:I

.field public final mTopBarTransparent:Z


# direct methods
.method public constructor <init>(IIZIIZIII)V
    .locals 0
    .parameter "bottomBarHeight"
    .parameter "bottomBarBg"
    .parameter "bottomBarTrans"
    .parameter "topBarHeight"
    .parameter "topBarBg"
    .parameter "topBarTrans"
    .parameter "previewWidth"
    .parameter "previewHeight"
    .parameter "previewBottomMargin"

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 22
    iput p1, p0, Lcom/miui/camera/LayoutSetting;->mBottomBarHeight:I

    .line 23
    iput p2, p0, Lcom/miui/camera/LayoutSetting;->mBottomBarBg:I

    .line 24
    iput-boolean p3, p0, Lcom/miui/camera/LayoutSetting;->mBottomBarTransparent:Z

    .line 25
    iput p4, p0, Lcom/miui/camera/LayoutSetting;->mTopBarHeight:I

    .line 26
    iput p5, p0, Lcom/miui/camera/LayoutSetting;->mTopBarBg:I

    .line 27
    iput-boolean p6, p0, Lcom/miui/camera/LayoutSetting;->mTopBarTransparent:Z

    .line 28
    iput p7, p0, Lcom/miui/camera/LayoutSetting;->mPreviewWidth:I

    .line 29
    iput p8, p0, Lcom/miui/camera/LayoutSetting;->mPreviewHeight:I

    .line 30
    iput p9, p0, Lcom/miui/camera/LayoutSetting;->mPreviewBottomMargin:I

    .line 31
    return-void
.end method
