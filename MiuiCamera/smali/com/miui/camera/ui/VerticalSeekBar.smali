.class public Lcom/miui/camera/ui/VerticalSeekBar;
.super Lcom/miui/camera/ui/AbsVerticalSeekBar;
.source "VerticalSeekBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;
    }
.end annotation


# instance fields
.field private mOnSeekBarChangeListener:Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 57
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/miui/camera/ui/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 61
    const v0, 0x101007b

    invoke-direct {p0, p1, p2, v0}, Lcom/miui/camera/ui/VerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 62
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 65
    invoke-direct {p0, p1, p2, p3}, Lcom/miui/camera/ui/AbsVerticalSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    return-void
.end method


# virtual methods
.method onProgressRefresh(FZ)V
    .locals 2
    .parameter "scale"
    .parameter "fromUser"

    .prologue
    .line 70
    invoke-super {p0, p1, p2}, Lcom/miui/camera/ui/AbsVerticalSeekBar;->onProgressRefresh(FZ)V

    .line 72
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-virtual {p0}, Lcom/miui/camera/ui/VerticalSeekBar;->getProgress()I

    move-result v1

    invoke-interface {v0, p0, v1, p2}, Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;->onProgressChanged(Lcom/miui/camera/ui/VerticalSeekBar;IZ)V

    .line 75
    :cond_0
    return-void
.end method

.method onStartTrackingTouch()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 92
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;->onStartTrackingTouch(Lcom/miui/camera/ui/VerticalSeekBar;)V

    .line 94
    :cond_0
    return-void
.end method

.method onStopTrackingTouch()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;

    if-eqz v0, :cond_0

    .line 99
    iget-object v0, p0, Lcom/miui/camera/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;

    invoke-interface {v0, p0}, Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;->onStopTrackingTouch(Lcom/miui/camera/ui/VerticalSeekBar;)V

    .line 101
    :cond_0
    return-void
.end method

.method public setOnSeekBarChangeListener(Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 86
    iput-object p1, p0, Lcom/miui/camera/ui/VerticalSeekBar;->mOnSeekBarChangeListener:Lcom/miui/camera/ui/VerticalSeekBar$OnSeekBarChangeListener;

    .line 87
    return-void
.end method
