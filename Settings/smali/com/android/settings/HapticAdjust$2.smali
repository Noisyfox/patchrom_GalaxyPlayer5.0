.class Lcom/android/settings/HapticAdjust$2;
.super Ljava/lang/Object;
.source "HapticAdjust.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/HapticAdjust;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/HapticAdjust;


# direct methods
.method constructor <init>(Lcom/android/settings/HapticAdjust;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/HapticAdjust$2;->this$0:Lcom/android/settings/HapticAdjust;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .parameter "s"
    .parameter "progress"
    .parameter "touch"

    .prologue
    if-eqz p3, :cond_0

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/TableRow;

    .local v1, row:Landroid/widget/TableRow;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/TableRow;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .local v0, changeval:Landroid/widget/TextView;
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .end local v0           #changeval:Landroid/widget/TextView;
    .end local v1           #row:Landroid/widget/TableRow;
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "s"

    .prologue
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .parameter "s"

    .prologue
    return-void
.end method
