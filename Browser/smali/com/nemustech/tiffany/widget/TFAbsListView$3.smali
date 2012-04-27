.class Lcom/nemustech/tiffany/widget/TFAbsListView$3;
.super Ljava/lang/Object;
.source "TFAbsListView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nemustech/tiffany/widget/TFAbsListView;->clearScrollingCache()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFAbsListView;)V
    .locals 0
    .parameter

    .prologue
    .line 2991
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2993
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iget-boolean v0, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    if-eqz v0, :cond_2

    .line 2994
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iput-boolean v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    .line 2995
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    #calls: Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawnWithCacheEnabled(Z)V
    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$2000(Lcom/nemustech/tiffany/widget/TFAbsListView;Z)V

    .line 2996
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    #getter for: Lcom/nemustech/tiffany/widget/TFAbsListView;->mPersistentDrawingCache:I
    invoke-static {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$2100(Lcom/nemustech/tiffany/widget/TFAbsListView;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2997
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    #calls: Lcom/nemustech/tiffany/widget/TFAbsListView;->setChildrenDrawingCacheEnabled(Z)V
    invoke-static {v0, v1}, Lcom/nemustech/tiffany/widget/TFAbsListView;->access$2200(Lcom/nemustech/tiffany/widget/TFAbsListView;Z)V

    .line 2999
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->isAlwaysDrawnWithCacheEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    .line 3000
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFAbsListView;->invalidate()V

    .line 3002
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFAbsListView$3;->this$0:Lcom/nemustech/tiffany/widget/TFAbsListView;

    iput-boolean v1, v0, Lcom/nemustech/tiffany/widget/TFAbsListView;->mCachingStarted:Z

    .line 3004
    :cond_2
    return-void
.end method
