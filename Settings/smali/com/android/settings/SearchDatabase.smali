.class public Lcom/android/settings/SearchDatabase;
.super Ljava/lang/Object;
.source "SearchDatabase.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/settings/SearchDatabase$DatabaseOpenHelper;
    }
.end annotation


# static fields
.field private static final COLUMN_MAP:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static final SUGGEST_COLUMNS:[Ljava/lang/String;


# instance fields
.field private final mDatabaseOpenHelper:Lcom/android/settings/SearchDatabase$DatabaseOpenHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "suggest_text_1"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "suggest_text_2"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "suggest_intent_extra_data"

    aput-object v2, v0, v1

    sput-object v0, Lcom/android/settings/SearchDatabase;->SUGGEST_COLUMNS:[Ljava/lang/String;

    invoke-static {}, Lcom/android/settings/SearchDatabase;->buildColumnMap()Ljava/util/HashMap;

    move-result-object v0

    sput-object v0, Lcom/android/settings/SearchDatabase;->COLUMN_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/android/settings/SearchDatabase$DatabaseOpenHelper;

    invoke-direct {v0, p1}, Lcom/android/settings/SearchDatabase$DatabaseOpenHelper;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/settings/SearchDatabase;->mDatabaseOpenHelper:Lcom/android/settings/SearchDatabase$DatabaseOpenHelper;

    return-void
.end method

.method private static buildColumnMap()Ljava/util/HashMap;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    const-string v5, "suggest_text_2"

    const-string v4, "suggest_text_1"

    const-string v3, "suggest_intent_extra_data"

    const-string v2, "depth"

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .local v0, map:Ljava/util/HashMap;,"Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const-string v1, "suggest_text_1"

    const-string v1, "suggest_text_1"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "suggest_text_2"

    const-string v1, "suggest_text_2"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "suggest_intent_extra_data"

    const-string v1, "suggest_intent_extra_data"

    invoke-virtual {v0, v3, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "depth"

    const-string v1, "depth"

    invoke-virtual {v0, v2, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "_id"

    const-string v2, "rowid AS _id"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method


# virtual methods
.method public getSuggestion(Ljava/lang/String;)Landroid/database/Cursor;
    .locals 9
    .parameter "query"

    .prologue
    const/4 v4, 0x1

    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "%%%s%%"

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v6

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-instance v0, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v0}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    .local v0, builder:Landroid/database/sqlite/SQLiteQueryBuilder;
    const-string v1, "search_table"

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v1, Lcom/android/settings/SearchDatabase;->COLUMN_MAP:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/android/settings/SearchDatabase;->mDatabaseOpenHelper:Lcom/android/settings/SearchDatabase$DatabaseOpenHelper;

    invoke-virtual {v1}, Lcom/android/settings/SearchDatabase$DatabaseOpenHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v2, Lcom/android/settings/SearchDatabase;->SUGGEST_COLUMNS:[Ljava/lang/String;

    const-string v3, "search_text LIKE ?"

    new-array v4, v4, [Ljava/lang/String;

    aput-object p1, v4, v6

    const-string v7, "depth"

    move-object v6, v5

    invoke-virtual/range {v0 .. v7}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v8

    .local v8, cursor:Landroid/database/Cursor;
    if-nez v8, :cond_1

    move-object v1, v5

    :goto_0
    return-object v1

    :cond_1
    invoke-interface {v8}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-nez v1, :cond_2

    invoke-interface {v8}, Landroid/database/Cursor;->close()V

    move-object v1, v5

    goto :goto_0

    :cond_2
    move-object v1, v8

    goto :goto_0
.end method

.method public insert(Landroid/content/ContentValues;)J
    .locals 3
    .parameter "values"

    .prologue
    iget-object v0, p0, Lcom/android/settings/SearchDatabase;->mDatabaseOpenHelper:Lcom/android/settings/SearchDatabase$DatabaseOpenHelper;

    invoke-virtual {v0}, Lcom/android/settings/SearchDatabase$DatabaseOpenHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    const-string v1, "search_table"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2, p1}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v0

    return-wide v0
.end method
