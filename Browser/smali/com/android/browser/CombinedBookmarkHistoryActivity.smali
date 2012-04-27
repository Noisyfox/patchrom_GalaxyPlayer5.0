.class public Lcom/android/browser/CombinedBookmarkHistoryActivity;
.super Landroid/app/TabActivity;
.source "CombinedBookmarkHistoryActivity.java"

# interfaces
.implements Landroid/widget/TabHost$OnTabChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;
    }
.end annotation


# static fields
.field static BOOKMARKS_TAB:Ljava/lang/String;

.field static HISTORY_TAB:Ljava/lang/String;

.field static STARTING_TAB:Ljava/lang/String;

.field static VISITED_TAB:Ljava/lang/String;

.field private static sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;


# instance fields
.field private mExtraData:Ljava/lang/String;

.field private mResultCode:I

.field private mResultData:Landroid/content/Intent;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 51
    const-string v0, "bookmark"

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->BOOKMARKS_TAB:Ljava/lang/String;

    .line 52
    const-string v0, "visited"

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->VISITED_TAB:Ljava/lang/String;

    .line 53
    const-string v0, "history"

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->HISTORY_TAB:Ljava/lang/String;

    .line 54
    const-string v0, "tab"

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->STARTING_TAB:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/app/TabActivity;-><init>()V

    .line 56
    return-void
.end method

.method private createTab(Landroid/content/Intent;IILjava/lang/String;)V
    .locals 5
    .parameter "intent"
    .parameter "labelResId"
    .parameter "iconResId"
    .parameter "tab"

    .prologue
    .line 148
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 149
    .local v0, resources:Landroid/content/res/Resources;
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v1

    .line 150
    .local v1, tabHost:Landroid/widget/TabHost;
    invoke-virtual {v1, p4}, Landroid/widget/TabHost;->newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v0, p2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v0, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Landroid/widget/TabHost$TabSpec;->setIndicator(Ljava/lang/CharSequence;Landroid/graphics/drawable/Drawable;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v2, p1}, Landroid/widget/TabHost$TabSpec;->setContent(Landroid/content/Intent;)Landroid/widget/TabHost$TabSpec;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TabHost;->addTab(Landroid/widget/TabHost$TabSpec;)V

    .line 153
    return-void
.end method

.method static getIconListenerSet()Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;
    .locals 1

    .prologue
    .line 85
    sget-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    invoke-direct {v0}, Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;-><init>()V

    sput-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    .line 88
    :cond_0
    sget-object v0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->sIconListenerSet:Lcom/android/browser/CombinedBookmarkHistoryActivity$IconListenerSet;

    return-object v0
.end method


# virtual methods
.method public finish()V
    .locals 3

    .prologue
    .line 184
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mExtraData:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 185
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mResultCode:I

    .line 186
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mResultData:Landroid/content/Intent;

    if-nez v0, :cond_0

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iput-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mResultData:Landroid/content/Intent;

    .line 187
    :cond_0
    iget-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mResultData:Landroid/content/Intent;

    const-string v1, "android.intent.extra.TEXT"

    iget-object v2, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mExtraData:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 189
    :cond_1
    iget v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mResultCode:I

    iget-object v1, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mResultData:Landroid/content/Intent;

    invoke-virtual {p0, v0, v1}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->setResult(ILandroid/content/Intent;)V

    .line 190
    invoke-super {p0}, Landroid/app/TabActivity;->finish()V

    .line 191
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 6
    .parameter

    .prologue
    const-class v5, Lcom/android/browser/BrowserBookmarksPage;

    .line 93
    invoke-super {p0, p1}, Landroid/app/TabActivity;->onCreate(Landroid/os/Bundle;)V

    .line 94
    const v0, 0x7f030027

    invoke-virtual {p0, v0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->setContentView(I)V

    .line 96
    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->setDefaultKeyMode(I)V

    .line 98
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/widget/TabHost;->setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V

    .line 100
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 102
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 103
    if-eqz v0, :cond_0

    .line 104
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 106
    :cond_0
    const v2, 0x7f090005

    const v3, 0x7f020009

    sget-object v4, Lcom/android/browser/CombinedBookmarkHistoryActivity;->BOOKMARKS_TAB:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->createTab(Landroid/content/Intent;IILjava/lang/String;)V

    .line 109
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/browser/BrowserBookmarksPage;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 112
    if-nez v0, :cond_2

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 113
    :goto_0
    const-string v3, "mostVisited"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 114
    invoke-virtual {v1, v2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 115
    const v2, 0x7f090006

    const v3, 0x7f020011

    sget-object v4, Lcom/android/browser/CombinedBookmarkHistoryActivity;->VISITED_TAB:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->createTab(Landroid/content/Intent;IILjava/lang/String;)V

    .line 118
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/browser/BrowserHistoryPage;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 119
    const/4 v2, 0x0

    .line 120
    if-eqz v0, :cond_3

    .line 121
    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    .line 122
    sget-object v2, Lcom/android/browser/CombinedBookmarkHistoryActivity;->STARTING_TAB:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 124
    :goto_1
    const v2, 0x7f090007

    const v3, 0x7f02000c

    sget-object v4, Lcom/android/browser/CombinedBookmarkHistoryActivity;->HISTORY_TAB:Ljava/lang/String;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->createTab(Landroid/content/Intent;IILjava/lang/String;)V

    .line 127
    if-eqz v0, :cond_1

    .line 128
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getTabHost()Landroid/widget/TabHost;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 133
    :cond_1
    invoke-static {}, Landroid/webkit/WebIconDatabase;->getInstance()Landroid/webkit/WebIconDatabase;

    .line 136
    new-instance v0, Lcom/android/browser/CombinedBookmarkHistoryActivity$1;

    invoke-direct {v0, p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity$1;-><init>(Lcom/android/browser/CombinedBookmarkHistoryActivity;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/android/browser/CombinedBookmarkHistoryActivity$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 144
    return-void

    .line 112
    :cond_2
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2, v0}, Landroid/os/Bundle;-><init>(Landroid/os/Bundle;)V

    goto :goto_0

    :cond_3
    move-object v0, v2

    goto :goto_1
.end method

.method public onTabChanged(Ljava/lang/String;)V
    .locals 2
    .parameter "tabId"

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/android/browser/CombinedBookmarkHistoryActivity;->getLocalActivityManager()Landroid/app/LocalActivityManager;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/app/LocalActivityManager;->getActivity(Ljava/lang/String;)Landroid/app/Activity;

    move-result-object v0

    .line 158
    .local v0, activity:Landroid/app/Activity;
    if-eqz v0, :cond_0

    .line 159
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 161
    :cond_0
    return-void
.end method

.method removeParentChildRelationShips()V
    .locals 1

    .prologue
    .line 168
    const-string v0, "privacy_clear_history"

    iput-object v0, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mExtraData:Ljava/lang/String;

    .line 169
    return-void
.end method

.method setResultFromChild(ILandroid/content/Intent;)V
    .locals 0
    .parameter "resultCode"
    .parameter "data"

    .prologue
    .line 178
    iput p1, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mResultCode:I

    .line 179
    iput-object p2, p0, Lcom/android/browser/CombinedBookmarkHistoryActivity;->mResultData:Landroid/content/Intent;

    .line 180
    return-void
.end method
