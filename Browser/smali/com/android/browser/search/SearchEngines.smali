.class public Lcom/android/browser/search/SearchEngines;
.super Ljava/lang/Object;
.source "SearchEngines.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static get(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngine;
    .locals 3
    .parameter "context"
    .parameter "name"

    .prologue
    .line 54
    invoke-static {p0}, Lcom/android/browser/search/SearchEngines;->getDefaultSearchEngine(Landroid/content/Context;)Lcom/android/browser/search/SearchEngine;

    move-result-object v0

    .line 55
    .local v0, defaultSearchEngine:Lcom/android/browser/search/SearchEngine;
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/android/browser/search/SearchEngine;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v0

    .line 61
    :goto_0
    return-object v2

    .line 59
    :cond_1
    invoke-static {p0, p1}, Lcom/android/browser/search/SearchEngines;->getSearchEngineInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngineInfo;

    move-result-object v1

    .line 60
    .local v1, searchEngineInfo:Lcom/android/browser/search/SearchEngineInfo;
    if-nez v1, :cond_2

    move-object v2, v0

    goto :goto_0

    .line 61
    :cond_2
    new-instance v2, Lcom/android/browser/search/OpenSearchSearchEngine;

    invoke-direct {v2, p0, v1}, Lcom/android/browser/search/OpenSearchSearchEngine;-><init>(Landroid/content/Context;Lcom/android/browser/search/SearchEngineInfo;)V

    goto :goto_0
.end method

.method public static getDefaultSearchEngine(Landroid/content/Context;)Lcom/android/browser/search/SearchEngine;
    .locals 1
    .parameter "context"

    .prologue
    .line 37
    invoke-static {p0}, Lcom/android/browser/search/DefaultSearchEngine;->create(Landroid/content/Context;)Lcom/android/browser/search/DefaultSearchEngine;

    move-result-object v0

    return-object v0
.end method

.method private static getSearchEngineInfo(Landroid/content/Context;Ljava/lang/String;)Lcom/android/browser/search/SearchEngineInfo;
    .locals 4
    .parameter "context"
    .parameter "name"

    .prologue
    .line 66
    :try_start_0
    new-instance v1, Lcom/android/browser/search/SearchEngineInfo;

    invoke-direct {v1, p0, p1}, Lcom/android/browser/search/SearchEngineInfo;-><init>(Landroid/content/Context;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 69
    :goto_0
    return-object v1

    .line 67
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 68
    .local v0, exception:Ljava/lang/IllegalArgumentException;
    const-string v1, "SearchEngines"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot load search engine "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 69
    const/4 v1, 0x0

    goto :goto_0
.end method
