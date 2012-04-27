.class Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;
.super Ljava/lang/Object;
.source "TFDndListView.java"

# interfaces
.implements Lcom/nemustech/tiffany/widget/TFDndController;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/nemustech/tiffany/widget/TFDndListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HeaderFooterDndController"
.end annotation


# instance fields
.field private final mWrappedController:Lcom/nemustech/tiffany/widget/TFDndController;

.field final synthetic this$0:Lcom/nemustech/tiffany/widget/TFDndListView;


# direct methods
.method constructor <init>(Lcom/nemustech/tiffany/widget/TFDndListView;Lcom/nemustech/tiffany/widget/TFDndController;)V
    .locals 0
    .parameter
    .parameter "wrappedController"

    .prologue
    .line 1015
    iput-object p1, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1016
    iput-object p2, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->mWrappedController:Lcom/nemustech/tiffany/widget/TFDndController;

    .line 1017
    return-void
.end method


# virtual methods
.method public allowDrag(I)Z
    .locals 3
    .parameter "startPos"

    .prologue
    const/4 v2, 0x0

    .line 1020
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->mWrappedController:Lcom/nemustech/tiffany/widget/TFDndController;

    if-eqz v0, :cond_2

    .line 1021
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p1, v0, :cond_0

    move v0, v2

    .line 1042
    :goto_0
    return v0

    .line 1027
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-lt p1, v0, :cond_1

    move v0, v2

    .line 1032
    goto :goto_0

    .line 1040
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->mWrappedController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    invoke-interface {v0, v1}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrag(I)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1042
    goto :goto_0
.end method

.method public allowDrop(II)Z
    .locals 3
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    const/4 v2, 0x0

    .line 1046
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->mWrappedController:Lcom/nemustech/tiffany/widget/TFDndController;

    if-eqz v0, :cond_2

    .line 1047
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    move v0, v2

    .line 1070
    :goto_0
    return v0

    .line 1054
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_1

    move v0, v2

    .line 1060
    goto :goto_0

    .line 1068
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->mWrappedController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFDndController;->allowDrop(II)Z

    move-result v0

    goto :goto_0

    :cond_2
    move v0, v2

    .line 1070
    goto :goto_0
.end method

.method public dropDone(II)V
    .locals 6
    .parameter "startPos"
    .parameter "destPos"

    .prologue
    const-string v5, "Illigal state. dropDone("

    const-string v4, ","

    const-string v3, ")"

    .line 1074
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->mWrappedController:Lcom/nemustech/tiffany/widget/TFDndController;

    if-eqz v0, :cond_2

    .line 1075
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeaderViewsCount()I

    move-result v0

    if-ge p2, v0, :cond_0

    .line 1076
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illigal state. dropDone("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1077
    :cond_0
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v0}, Lcom/nemustech/tiffany/widget/TFDndListView;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getFooterViewsCount()I

    move-result v1

    sub-int/2addr v0, v1

    if-le p2, v0, :cond_1

    .line 1078
    new-instance v0, Ljava/lang/RuntimeException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Illigal state. dropDone("

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1086
    :cond_1
    iget-object v0, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->mWrappedController:Lcom/nemustech/tiffany/widget/TFDndController;

    iget-object v1, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v1}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeaderViewsCount()I

    move-result v1

    sub-int v1, p1, v1

    iget-object v2, p0, Lcom/nemustech/tiffany/widget/TFDndListView$HeaderFooterDndController;->this$0:Lcom/nemustech/tiffany/widget/TFDndListView;

    invoke-virtual {v2}, Lcom/nemustech/tiffany/widget/TFDndListView;->getHeaderViewsCount()I

    move-result v2

    sub-int v2, p2, v2

    invoke-interface {v0, v1, v2}, Lcom/nemustech/tiffany/widget/TFDndController;->dropDone(II)V

    .line 1088
    :cond_2
    return-void
.end method
