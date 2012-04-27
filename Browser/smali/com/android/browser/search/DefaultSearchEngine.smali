.class public Lcom/android/browser/search/DefaultSearchEngine;
.super Ljava/lang/Object;
.source "DefaultSearchEngine.java"

# interfaces
.implements Lcom/android/browser/search/SearchEngine;


# instance fields
.field private final mLabel:Ljava/lang/CharSequence;

.field private final mSearchable:Landroid/app/SearchableInfo;


# direct methods
.method private constructor <init>(Landroid/content/Context;Landroid/app/SearchableInfo;)V
    .locals 1
    .parameter "context"
    .parameter "searchable"

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p2, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    .line 42
    iget-object v0, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lcom/android/browser/search/DefaultSearchEngine;->loadLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/browser/search/DefaultSearchEngine;->mLabel:Ljava/lang/CharSequence;

    .line 43
    return-void
.end method

.method public static create(Landroid/content/Context;)Lcom/android/browser/search/DefaultSearchEngine;
    .locals 5
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 46
    const-string v3, "search"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/SearchManager;

    .line 48
    .local v1, searchManager:Landroid/app/SearchManager;
    invoke-virtual {v1}, Landroid/app/SearchManager;->getWebSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 49
    .local v0, name:Landroid/content/ComponentName;
    if-nez v0, :cond_0

    move-object v3, v4

    .line 52
    :goto_0
    return-object v3

    .line 50
    :cond_0
    invoke-virtual {v1, v0}, Landroid/app/SearchManager;->getSearchableInfo(Landroid/content/ComponentName;)Landroid/app/SearchableInfo;

    move-result-object v2

    .line 51
    .local v2, searchable:Landroid/app/SearchableInfo;
    if-nez v2, :cond_1

    move-object v3, v4

    goto :goto_0

    .line 52
    :cond_1
    new-instance v3, Lcom/android/browser/search/DefaultSearchEngine;

    invoke-direct {v3, p0, v2}, Lcom/android/browser/search/DefaultSearchEngine;-><init>(Landroid/content/Context;Landroid/app/SearchableInfo;)V

    goto :goto_0
.end method

.method private loadLabel(Landroid/content/Context;Landroid/content/ComponentName;)Ljava/lang/CharSequence;
    .locals 6
    .parameter "context"
    .parameter "activityName"

    .prologue
    .line 56
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    .line 58
    .local v2, pm:Landroid/content/pm/PackageManager;
    const/4 v3, 0x0

    :try_start_0
    invoke-virtual {v2, p2, v3}, Landroid/content/pm/PackageManager;->getActivityInfo(Landroid/content/ComponentName;I)Landroid/content/pm/ActivityInfo;

    move-result-object v0

    .line 59
    .local v0, ai:Landroid/content/pm/ActivityInfo;
    invoke-virtual {v0, v2}, Landroid/content/pm/ActivityInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 62
    .end local v0           #ai:Landroid/content/pm/ActivityInfo;
    :goto_0
    return-object v3

    .line 60
    :catch_0
    move-exception v3

    move-object v1, v3

    .line 61
    .local v1, ex:Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "DefaultSearchEngine"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Web search activity not found: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/4 v3, 0x0

    goto :goto_0
.end method


# virtual methods
.method public close()V
    .locals 0

    .prologue
    .line 112
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 3

    .prologue
    const-string v2, "google"

    .line 67
    iget-object v1, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, packageName:Ljava/lang/String;
    const-string v1, "com.google.android.googlequicksearchbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 70
    const-string v1, "google"

    move-object v1, v2

    .line 74
    :goto_0
    return-object v1

    .line 71
    :cond_0
    const-string v1, "com.android.quicksearchbox"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 72
    const-string v1, "google"

    move-object v1, v2

    goto :goto_0

    :cond_1
    move-object v1, v0

    .line 74
    goto :goto_0
.end method

.method public getSuggestions(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 2
    .parameter "context"
    .parameter "query"

    .prologue
    .line 102
    const-string v1, "search"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/SearchManager;

    .line 104
    .local v0, searchManager:Landroid/app/SearchManager;
    iget-object v1, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0, v1, p2}, Landroid/app/SearchManager;->getSuggestions(Landroid/app/SearchableInfo;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1
.end method

.method public startSearch(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 5
    .parameter "context"
    .parameter "query"
    .parameter "appData"
    .parameter "extraData"

    .prologue
    .line 84
    :try_start_0
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.WEB_SEARCH"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 85
    .local v1, intent:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 86
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 87
    const-string v2, "query"

    invoke-virtual {v1, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    if-eqz p3, :cond_0

    .line 89
    const-string v2, "app_data"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 91
    :cond_0
    if-eqz p4, :cond_1

    .line 92
    const-string v2, "intent_extra_data_key"

    invoke-virtual {v1, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 94
    :cond_1
    const-string v2, "com.android.browser.application_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 95
    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 99
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return-void

    .line 96
    :catch_0
    move-exception v2

    move-object v0, v2

    .line 97
    .local v0, ex:Landroid/content/ActivityNotFoundException;
    const-string v2, "DefaultSearchEngine"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Web search activity not found: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v4}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public supportsSuggestions()Z
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public supportsVoiceSearch()Z
    .locals 2

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/android/browser/search/DefaultSearchEngine;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "google"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 120
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ActivitySearchEngine{"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/browser/search/DefaultSearchEngine;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
