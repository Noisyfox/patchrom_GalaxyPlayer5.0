.class Lcom/android/providers/downloads/ui/DownloadList$5;
.super Ljava/lang/Object;
.source "DownloadList.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/providers/downloads/ui/DownloadList;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/providers/downloads/ui/DownloadList;


# direct methods
.method constructor <init>(Lcom/android/providers/downloads/ui/DownloadList;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 7
    .parameter "dialog"
    .parameter "which"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    invoke-virtual {v1}, Lcom/android/providers/downloads/ui/DownloadList;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f05

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    .local v0, items:[Ljava/lang/String;
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    aget-object v2, v0, p2

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mFilterTitle:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$302(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mFilterTitle:Ljava/lang/String;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$300(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    const v4, 0x7f070001

    invoke-virtual {v3, v4}, Lcom/android/providers/downloads/ui/DownloadList;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mFilterTitle:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/providers/downloads/ui/DownloadList;->access$300(Lcom/android/providers/downloads/ui/DownloadList;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->setTitle(Ljava/lang/CharSequence;)V

    :cond_0
    if-nez p2, :cond_1

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/providers/downloads/ui/DownloadList;->access$402(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mWhereClause:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/providers/downloads/ui/DownloadList;->access$502(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;

    :goto_0
    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->initDateSortedCursor()V
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$700(Lcom/android/providers/downloads/ui/DownloadList;)V

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    new-instance v2, Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v3, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v4, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedCursor:Landroid/database/Cursor;
    invoke-static {v4}, Lcom/android/providers/downloads/ui/DownloadList;->access$100(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/database/Cursor;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/android/providers/downloads/ui/DownloadAdapter;-><init>(Landroid/content/Context;Landroid/database/Cursor;)V

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;
    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$802(Lcom/android/providers/downloads/ui/DownloadList;Lcom/android/providers/downloads/ui/DownloadAdapter;)Lcom/android/providers/downloads/ui/DownloadAdapter;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateOrderedListView:Landroid/widget/EditableListView;
    invoke-static {v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$900(Lcom/android/providers/downloads/ui/DownloadList;)Landroid/widget/EditableListView;

    move-result-object v1

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #getter for: Lcom/android/providers/downloads/ui/DownloadList;->mDateSortedAdapter:Lcom/android/providers/downloads/ui/DownloadAdapter;
    invoke-static {v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$800(Lcom/android/providers/downloads/ui/DownloadList;)Lcom/android/providers/downloads/ui/DownloadAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/EditableListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void

    :cond_1
    array-length v1, v0

    sub-int/2addr v1, v6

    if-ne p2, v1, :cond_2

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/providers/downloads/ui/DownloadList;->access$402(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    sget-object v3, Lcom/android/providers/downloads/ui/DownloadUtils;->DOWNLOAD_FILTERS:Ljava/util/ArrayList;

    #calls: Lcom/android/providers/downloads/ui/DownloadList;->buildOthersClause(Ljava/util/ArrayList;)Ljava/lang/String;
    invoke-static {v2, v3}, Lcom/android/providers/downloads/ui/DownloadList;->access$600(Lcom/android/providers/downloads/ui/DownloadList;Ljava/util/ArrayList;)Ljava/lang/String;

    move-result-object v2

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mWhereClause:Ljava/lang/String;
    invoke-static {v1, v2}, Lcom/android/providers/downloads/ui/DownloadList;->access$502(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    :cond_2
    iget-object v2, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    sget-object v1, Lcom/android/providers/downloads/ui/DownloadUtils;->DOWNLOAD_FILTERS:Ljava/util/ArrayList;

    sub-int v3, p2, v6

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mFilterPackage:Ljava/lang/String;
    invoke-static {v2, v1}, Lcom/android/providers/downloads/ui/DownloadList;->access$402(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;

    iget-object v1, p0, Lcom/android/providers/downloads/ui/DownloadList$5;->this$0:Lcom/android/providers/downloads/ui/DownloadList;

    #setter for: Lcom/android/providers/downloads/ui/DownloadList;->mWhereClause:Ljava/lang/String;
    invoke-static {v1, v5}, Lcom/android/providers/downloads/ui/DownloadList;->access$502(Lcom/android/providers/downloads/ui/DownloadList;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0
.end method
