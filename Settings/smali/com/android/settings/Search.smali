.class public Lcom/android/settings/Search;
.super Landroid/app/ListActivity;
.source "Search.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/Search$ChildViewCache;,
        Lcom/android/settings/Search$SearchAdapter;
    }
.end annotation


# instance fields
.field private mSearchAdapter:Lcom/android/settings/Search$SearchAdapter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/settings/Search;)Lcom/android/settings/Search$SearchAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    iget-object v0, p0, Lcom/android/settings/Search;->mSearchAdapter:Lcom/android/settings/Search$SearchAdapter;

    return-object v0
.end method

.method static synthetic access$002(Lcom/android/settings/Search;Lcom/android/settings/Search$SearchAdapter;)Lcom/android/settings/Search$SearchAdapter;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    iput-object p1, p0, Lcom/android/settings/Search;->mSearchAdapter:Lcom/android/settings/Search$SearchAdapter;

    return-object p1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 15
    .parameter "savedInstanceState"

    .prologue
    invoke-super/range {p0 .. p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/android/settings/Search;->getIntent()Landroid/content/Intent;

    move-result-object v11

    .local v11, intent:Landroid/content/Intent;
    invoke-virtual {v11}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v8

    .local v8, action:Ljava/lang/String;
    const-string v1, "android.intent.action.VIEW"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "intent_extra_data_key"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .local v9, activity:[Ljava/lang/String;
    new-instance v12, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v12, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v12, newIntent:Landroid/content/Intent;
    const/4 v1, 0x0

    aget-object v1, v9, v1

    const/4 v2, 0x1

    aget-object v2, v9, v2

    invoke-virtual {v12, v1, v2}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v12}, Lcom/android/settings/Search;->startActivity(Landroid/content/Intent;)V

    invoke-virtual {p0}, Lcom/android/settings/Search;->finish()V

    .end local v9           #activity:[Ljava/lang/String;
    .end local v12           #newIntent:Landroid/content/Intent;
    :cond_0
    :goto_0
    return-void

    :cond_1
    const-string v1, "android.intent.action.SEARCH"

    invoke-virtual {v1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "query"

    invoke-virtual {v11, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .local v14, searchStringParameter:Ljava/lang/String;
    if-nez v14, :cond_2

    invoke-virtual {p0}, Lcom/android/settings/Search;->finish()V

    goto :goto_0

    :cond_2
    invoke-virtual {v14}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v13

    .local v13, searchString:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/settings/Search;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v10

    .local v10, cr:Landroid/content/ContentResolver;
    new-instance v0, Lcom/android/settings/Search$1;

    invoke-direct {v0, p0, v10, v13}, Lcom/android/settings/Search$1;-><init>(Lcom/android/settings/Search;Landroid/content/ContentResolver;Ljava/lang/String;)V

    .local v0, queryHandler:Landroid/content/AsyncQueryHandler;
    const-string v1, "content://com.android.settings.Provider/search_suggest_query?"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .local v3, uri:Landroid/net/Uri;
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    const-string v5, "?"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    aput-object v13, v6, v7

    const/4 v7, 0x0

    invoke-virtual/range {v0 .. v7}, Landroid/content/AsyncQueryHandler;->startQuery(ILjava/lang/Object;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/android/settings/Search;->getListView()Landroid/widget/ListView;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    iget-object v0, p0, Lcom/android/settings/Search;->mSearchAdapter:Lcom/android/settings/Search$SearchAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/Search;->mSearchAdapter:Lcom/android/settings/Search$SearchAdapter;

    invoke-virtual {v0, v1}, Lcom/android/settings/Search$SearchAdapter;->changeCursor(Landroid/database/Cursor;)V

    invoke-virtual {p0, v1}, Lcom/android/settings/Search;->setListAdapter(Landroid/widget/ListAdapter;)V

    iput-object v1, p0, Lcom/android/settings/Search;->mSearchAdapter:Lcom/android/settings/Search$SearchAdapter;

    :cond_0
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 7
    .parameter
    .parameter "view"
    .parameter "position"
    .parameter "id"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, parent:Landroid/widget/AdapterView;,"Landroid/widget/AdapterView<*>;"
    iget-object v5, p0, Lcom/android/settings/Search;->mSearchAdapter:Lcom/android/settings/Search$SearchAdapter;

    invoke-virtual {v5}, Lcom/android/settings/Search$SearchAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .local v2, cursor:Landroid/database/Cursor;
    invoke-interface {v2}, Landroid/database/Cursor;->getPosition()I

    move-result v1

    .local v1, currentPos:I
    invoke-interface {v2, p3}, Landroid/database/Cursor;->moveToPosition(I)Z

    const-string v5, "suggest_intent_extra_data"

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v5

    invoke-interface {v2, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    .local v3, extraData:Ljava/lang/String;
    invoke-interface {v2, v1}, Landroid/database/Cursor;->moveToPosition(I)Z

    new-instance v4, Landroid/content/Intent;

    const-string v5, "android.intent.action.VIEW"

    invoke-direct {v4, v5}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .local v4, newIntent:Landroid/content/Intent;
    const-string v5, "\n"

    invoke-virtual {v3, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .local v0, activity:[Ljava/lang/String;
    const/4 v5, 0x0

    aget-object v5, v0, v5

    const/4 v6, 0x1

    aget-object v6, v0, v6

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p0, v4}, Lcom/android/settings/Search;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
