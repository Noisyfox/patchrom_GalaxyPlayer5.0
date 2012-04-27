.class public Lcom/android/browser/BrowserRssNewlinkPage;
.super Landroid/app/ListActivity;
.source "BrowserRssNewlinkPage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/BrowserRssNewlinkPage$1;,
        Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;,
        Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;
    }
.end annotation


# static fields
.field private static LinkNumber:I


# instance fields
.field private FeedTitle:[Ljava/lang/String;

.field private FeedUrl:[Ljava/lang/String;

.field private mAdapter:Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private final mIconReceiver:Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const/4 v0, 0x0

    sput v0, Lcom/android/browser/BrowserRssNewlinkPage;->LinkNumber:I

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 47
    invoke-direct {p0}, Landroid/app/ListActivity;-><init>()V

    .line 59
    new-instance v0, Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;-><init>(Lcom/android/browser/BrowserRssNewlinkPage;Lcom/android/browser/BrowserRssNewlinkPage$1;)V

    iput-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage;->mIconReceiver:Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;

    .line 143
    return-void
.end method

.method static synthetic access$100(Lcom/android/browser/BrowserRssNewlinkPage;)Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage;->mAdapter:Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/browser/BrowserRssNewlinkPage;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage;->FeedTitle:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/browser/BrowserRssNewlinkPage;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 47
    iget-object v0, p0, Lcom/android/browser/BrowserRssNewlinkPage;->FeedUrl:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400()I
    .locals 1

    .prologue
    .line 47
    sget v0, Lcom/android/browser/BrowserRssNewlinkPage;->LinkNumber:I

    return v0
.end method

.method private setResultToParent(ILandroid/content/Intent;)V
    .locals 2
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 123
    invoke-virtual {p0}, Lcom/android/browser/BrowserRssNewlinkPage;->getParent()Landroid/app/Activity;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v0, p0

    .line 124
    .local v0, a:Landroid/app/Activity;
    :goto_0
    invoke-virtual {v0, p1, p2}, Landroid/app/Activity;->setResult(ILandroid/content/Intent;)V

    .line 125
    return-void

    .line 123
    .end local v0           #a:Landroid/app/Activity;
    :cond_0
    invoke-virtual {p0}, Lcom/android/browser/BrowserRssNewlinkPage;->getParent()Landroid/app/Activity;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 2
    .parameter "requestCode"
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 130
    packed-switch p1, :pswitch_data_0

    .line 141
    :cond_0
    :goto_0
    return-void

    .line 132
    :pswitch_0
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 134
    const-string v0, "browser"

    const-string v1, "onDownloadStart google reader confirmation - cancel "

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 130
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 8
    .parameter "savedInstanceState"

    .prologue
    const/4 v7, -0x1

    .line 68
    invoke-super {p0, p1}, Landroid/app/ListActivity;->onCreate(Landroid/os/Bundle;)V

    .line 70
    const v4, 0x7f09010d

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserRssNewlinkPage;->setTitle(I)V

    .line 72
    new-instance v4, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;

    invoke-direct {v4, p0}, Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;-><init>(Lcom/android/browser/BrowserRssNewlinkPage;)V

    iput-object v4, p0, Lcom/android/browser/BrowserRssNewlinkPage;->mAdapter:Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;

    .line 73
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v4

    iget-object v5, p0, Lcom/android/browser/BrowserRssNewlinkPage;->mIconReceiver:Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;

    invoke-virtual {v4, v5}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->addListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 74
    invoke-virtual {p0}, Lcom/android/browser/BrowserRssNewlinkPage;->getIntent()Landroid/content/Intent;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 75
    .local v0, extra:Landroid/os/Bundle;
    const-string v4, "Feed_number"

    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    sput v4, Lcom/android/browser/BrowserRssNewlinkPage;->LinkNumber:I

    .line 76
    sget v4, Lcom/android/browser/BrowserRssNewlinkPage;->LinkNumber:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/browser/BrowserRssNewlinkPage;->FeedTitle:[Ljava/lang/String;

    .line 77
    sget v4, Lcom/android/browser/BrowserRssNewlinkPage;->LinkNumber:I

    new-array v4, v4, [Ljava/lang/String;

    iput-object v4, p0, Lcom/android/browser/BrowserRssNewlinkPage;->FeedUrl:[Ljava/lang/String;

    .line 79
    const/4 v1, 0x0

    .local v1, index:I
    :goto_0
    sget v4, Lcom/android/browser/BrowserRssNewlinkPage;->LinkNumber:I

    if-ge v1, v4, :cond_0

    .line 81
    iget-object v4, p0, Lcom/android/browser/BrowserRssNewlinkPage;->FeedTitle:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "title"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 82
    iget-object v4, p0, Lcom/android/browser/BrowserRssNewlinkPage;->FeedUrl:[Ljava/lang/String;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "url"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    .line 79
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 85
    :cond_0
    iget-object v4, p0, Lcom/android/browser/BrowserRssNewlinkPage;->mAdapter:Lcom/android/browser/BrowserRssNewlinkPage$BrowserRssNewLinkAdapter;

    invoke-virtual {p0, v4}, Lcom/android/browser/BrowserRssNewlinkPage;->setListAdapter(Landroid/widget/ListAdapter;)V

    .line 87
    invoke-virtual {p0}, Lcom/android/browser/BrowserRssNewlinkPage;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 88
    .local v2, list:Landroid/widget/ListView;
    new-instance v3, Landroid/view/ViewStub;

    const v4, 0x7f030012

    invoke-direct {v3, p0, v4}, Landroid/view/ViewStub;-><init>(Landroid/content/Context;I)V

    .line 89
    .local v3, v:Landroid/view/View;
    new-instance v4, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v4, v7, v7}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v3, v4}, Lcom/android/browser/BrowserRssNewlinkPage;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 90
    invoke-virtual {v2, v3}, Landroid/widget/ListView;->setEmptyView(Landroid/view/View;)V

    .line 92
    invoke-virtual {p0}, Lcom/android/browser/BrowserRssNewlinkPage;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    iput-object v4, p0, Lcom/android/browser/BrowserRssNewlinkPage;->mContentResolver:Landroid/content/ContentResolver;

    .line 96
    return-void
.end method

.method protected onDestroy()V
    .locals 2

    .prologue
    .line 100
    invoke-super {p0}, Landroid/app/ListActivity;->onDestroy()V

    .line 101
    invoke-static {}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/BrowserRssNewlinkPage;->mIconReceiver:Lcom/android/browser/BrowserRssNewlinkPage$IconReceiver;

    invoke-virtual {v0, v1}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;->removeListener(Landroid/webkit/WebIconDatabase$IconListener;)V

    .line 103
    return-void
.end method

.method protected onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V
    .locals 3
    .parameter "l"
    .parameter "v"
    .parameter "position"
    .parameter "id"

    .prologue
    .line 114
    iget-object v2, p0, Lcom/android/browser/BrowserRssNewlinkPage;->FeedUrl:[Ljava/lang/String;

    aget-object v0, v2, p3

    .line 115
    .local v0, feedUrl:Ljava/lang/String;
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v2, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 116
    .local v1, intent:Landroid/content/Intent;
    const/4 v2, -0x1

    invoke-direct {p0, v2, v1}, Lcom/android/browser/BrowserRssNewlinkPage;->setResultToParent(ILandroid/content/Intent;)V

    .line 117
    invoke-virtual {p0}, Lcom/android/browser/BrowserRssNewlinkPage;->finish()V

    .line 120
    return-void
.end method
