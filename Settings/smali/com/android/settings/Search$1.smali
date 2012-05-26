.class Lcom/android/settings/Search$1;
.super Landroid/content/AsyncQueryHandler;
.source "Search.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/Search;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/Search;

.field final synthetic val$searchString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/android/settings/Search;Landroid/content/ContentResolver;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/Search$1;->this$0:Lcom/android/settings/Search;

    iput-object p3, p0, Lcom/android/settings/Search$1;->val$searchString:Ljava/lang/String;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 7
    .parameter "token"
    .parameter "cookie"
    .parameter "c"

    .prologue
    const/4 v6, 0x0

    const/4 v0, 0x0

    .local v0, count:I
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->getCount()I

    move-result v0

    iget-object v1, p0, Lcom/android/settings/Search$1;->this$0:Lcom/android/settings/Search;

    new-instance v2, Lcom/android/settings/Search$SearchAdapter;

    iget-object v3, p0, Lcom/android/settings/Search$1;->this$0:Lcom/android/settings/Search;

    iget-object v4, p0, Lcom/android/settings/Search$1;->this$0:Lcom/android/settings/Search;

    invoke-direct {v2, v3, v4, p3, v6}, Lcom/android/settings/Search$SearchAdapter;-><init>(Lcom/android/settings/Search;Landroid/content/Context;Landroid/database/Cursor;Z)V

    #setter for: Lcom/android/settings/Search;->mSearchAdapter:Lcom/android/settings/Search$SearchAdapter;
    invoke-static {v1, v2}, Lcom/android/settings/Search;->access$002(Lcom/android/settings/Search;Lcom/android/settings/Search$SearchAdapter;)Lcom/android/settings/Search$SearchAdapter;

    iget-object v1, p0, Lcom/android/settings/Search$1;->this$0:Lcom/android/settings/Search;

    iget-object v2, p0, Lcom/android/settings/Search$1;->this$0:Lcom/android/settings/Search;

    #getter for: Lcom/android/settings/Search;->mSearchAdapter:Lcom/android/settings/Search$SearchAdapter;
    invoke-static {v2}, Lcom/android/settings/Search;->access$000(Lcom/android/settings/Search;)Lcom/android/settings/Search$SearchAdapter;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/Search;->setListAdapter(Landroid/widget/ListAdapter;)V

    :cond_0
    iget-object v1, p0, Lcom/android/settings/Search$1;->this$0:Lcom/android/settings/Search;

    iget-object v2, p0, Lcom/android/settings/Search$1;->this$0:Lcom/android/settings/Search;

    invoke-virtual {v2}, Lcom/android/settings/Search;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const/high16 v3, 0x7f0a

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v6

    const/4 v5, 0x1

    iget-object v6, p0, Lcom/android/settings/Search$1;->val$searchString:Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/android/settings/Search;->setTitle(Ljava/lang/CharSequence;)V

    return-void
.end method
