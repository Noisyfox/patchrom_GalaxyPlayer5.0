.class Lcom/nemustech/tiffany/widget/TFAbsListView$2;
.super Ljava/lang/Object;
.source "TFAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;->onTouchEvent(Landroid/view/MotionEvent;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

.field final synthetic val$child:Landroid/view/View;

.field final synthetic val$performClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;Landroid/view/View;Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 2397
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;->val$child:Landroid/view/View;

    iput-object p3, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;->val$performClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2399
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;->val$child:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setPressed(Z)V

    .line 2400
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->setPressed(Z)V

    .line 2401
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAdapterView;->mDataChanged:Z

    if-nez v0, :cond_0

    .line 2402
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;->val$performClick:Lcom/nemustech/tiffany/widget/TFAbsListView$PerformClick;

    invoke-virtual {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->post(Ljava/lang/Runnable;)Z

    .line 2404
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$2;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    const/4 v1, -0x1

    iput v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mTouchMode:I

    .line 2405
    return-void
.end method
