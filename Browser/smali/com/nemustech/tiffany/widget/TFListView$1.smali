.class Lcom/nemustech/tiffany/widget/TFListView$1;
.super Ljava/lang/Object;
.source "TFListView.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFListView;)V
    .locals 0
    .parameter

    .prologue
    .line 173
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFListView$1;->this$0:Lcom/nemustech/tiffany/widget/TFListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1
    .parameter "input"

    .prologue
    .line 175
    const/high16 v0, 0x3f00

    mul-float/2addr v0, p1

    return v0
.end method
