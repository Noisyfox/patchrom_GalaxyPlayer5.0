.class public Lcom/miui/camera/ui/ShutterButton;
.super Lcom/miui/camera/ui/RotateImageView;
.source "ShutterButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;
    }
.end annotation


# instance fields
.field private mListener:Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;

.field private mOldPressed:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 33
    invoke-direct {p0, p1, p2}, Lcom/miui/camera/ui/RotateImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 34
    return-void
.end method

.method static synthetic access$000(Lcom/miui/camera/ui/ShutterButton;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 11
    invoke-direct {p0, p1}, Lcom/miui/camera/ui/ShutterButton;->callShutterButtonFocus(Z)V

    return-void
.end method

.method private callShutterButtonFocus(Z)V
    .locals 1
    .parameter "pressed"

    .prologue
    .line 89
    iget-object v0, p0, Lcom/miui/camera/ui/ShutterButton;->mListener:Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;

    if-eqz v0, :cond_0

    .line 90
    iget-object v0, p0, Lcom/miui/camera/ui/ShutterButton;->mListener:Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v0, p0, p1}, Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonFocus(Lcom/miui/camera/ui/ShutterButton;Z)V

    .line 92
    :cond_0
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 2

    .prologue
    .line 51
    invoke-super {p0}, Lcom/miui/camera/ui/RotateImageView;->drawableStateChanged()V

    .line 52
    invoke-virtual {p0}, Lcom/miui/camera/ui/ShutterButton;->isPressed()Z

    move-result v0

    .line 53
    .local v0, pressed:Z
    iget-boolean v1, p0, Lcom/miui/camera/ui/ShutterButton;->mOldPressed:Z

    if-eq v0, v1, :cond_0

    .line 54
    if-nez v0, :cond_1

    .line 76
    new-instance v1, Lcom/miui/camera/ui/ShutterButton$1;

    invoke-direct {v1, p0, v0}, Lcom/miui/camera/ui/ShutterButton$1;-><init>(Lcom/miui/camera/ui/ShutterButton;Z)V

    invoke-virtual {p0, v1}, Lcom/miui/camera/ui/ShutterButton;->post(Ljava/lang/Runnable;)Z

    .line 84
    :goto_0
    iput-boolean v0, p0, Lcom/miui/camera/ui/ShutterButton;->mOldPressed:Z

    .line 86
    :cond_0
    return-void

    .line 82
    :cond_1
    invoke-direct {p0, v0}, Lcom/miui/camera/ui/ShutterButton;->callShutterButtonFocus(Z)V

    goto :goto_0
.end method

.method public performClick()Z
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/miui/camera/ui/RotateImageView;->performClick()Z

    move-result v0

    .line 97
    .local v0, result:Z
    iget-object v1, p0, Lcom/miui/camera/ui/ShutterButton;->mListener:Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;

    if-eqz v1, :cond_0

    .line 98
    iget-object v1, p0, Lcom/miui/camera/ui/ShutterButton;->mListener:Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;

    invoke-interface {v1, p0}, Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;->onShutterButtonClick(Lcom/miui/camera/ui/ShutterButton;)V

    .line 100
    :cond_0
    return v0
.end method

.method public setOnShutterButtonListener(Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 41
    iput-object p1, p0, Lcom/miui/camera/ui/ShutterButton;->mListener:Lcom/miui/camera/ui/ShutterButton$OnShutterButtonListener;

    .line 42
    return-void
.end method
