.class public Lcom/miui/camera/ui/FocusRectangle;
.super Landroid/widget/ImageView;
.source "FocusRectangle.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 17
    return-void
.end method


# virtual methods
.method public clear()V
    .locals 2

    .prologue
    .line 38
    const-string v0, "com.miui.camera.ui.FocusRectangle"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 39
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/FocusRectangle;->setVisibility(I)V

    .line 40
    return-void
.end method

.method public showFail()V
    .locals 2

    .prologue
    .line 32
    const-string v0, "com.miui.camera.ui.FocusRectangle"

    const-string v1, "showFail"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 33
    const v0, 0x7f020014

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/FocusRectangle;->setImageResource(I)V

    .line 34
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/FocusRectangle;->setVisibility(I)V

    .line 35
    return-void
.end method

.method public showStart()V
    .locals 2

    .prologue
    .line 20
    const-string v0, "com.miui.camera.ui.FocusRectangle"

    const-string v1, "showStart"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    const v0, 0x7f020013

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/FocusRectangle;->setImageResource(I)V

    .line 22
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/FocusRectangle;->setVisibility(I)V

    .line 23
    return-void
.end method

.method public showSuccess()V
    .locals 2

    .prologue
    .line 26
    const-string v0, "com.miui.camera.ui.FocusRectangle"

    const-string v1, "showSuccess"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 27
    const v0, 0x7f020015

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/FocusRectangle;->setImageResource(I)V

    .line 28
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/miui/camera/ui/FocusRectangle;->setVisibility(I)V

    .line 29
    return-void
.end method
