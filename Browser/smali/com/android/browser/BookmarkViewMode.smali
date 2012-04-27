.class final enum Lcom/android/browser/BookmarkViewMode;
.super Ljava/lang/Enum;
.source "BrowserBookmarksPage.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/browser/BookmarkViewMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/browser/BookmarkViewMode;

.field public static final enum GRID:Lcom/android/browser/BookmarkViewMode;

.field public static final enum LIST:Lcom/android/browser/BookmarkViewMode;

.field public static final enum NONE:Lcom/android/browser/BookmarkViewMode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 64
    new-instance v0, Lcom/android/browser/BookmarkViewMode;

    const-string v1, "NONE"

    invoke-direct {v0, v1, v2}, Lcom/android/browser/BookmarkViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/BookmarkViewMode;->NONE:Lcom/android/browser/BookmarkViewMode;

    new-instance v0, Lcom/android/browser/BookmarkViewMode;

    const-string v1, "GRID"

    invoke-direct {v0, v1, v3}, Lcom/android/browser/BookmarkViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    new-instance v0, Lcom/android/browser/BookmarkViewMode;

    const-string v1, "LIST"

    invoke-direct {v0, v1, v4}, Lcom/android/browser/BookmarkViewMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/browser/BookmarkViewMode;

    sget-object v1, Lcom/android/browser/BookmarkViewMode;->NONE:Lcom/android/browser/BookmarkViewMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/browser/BookmarkViewMode;->GRID:Lcom/android/browser/BookmarkViewMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/browser/BookmarkViewMode;->LIST:Lcom/android/browser/BookmarkViewMode;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/browser/BookmarkViewMode;->$VALUES:[Lcom/android/browser/BookmarkViewMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/browser/BookmarkViewMode;
    .locals 1
    .parameter

    .prologue
    .line 64
    const-class v0, Lcom/android/browser/BookmarkViewMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/android/browser/BookmarkViewMode;

    return-object p0
.end method

.method public static values()[Lcom/android/browser/BookmarkViewMode;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/android/browser/BookmarkViewMode;->$VALUES:[Lcom/android/browser/BookmarkViewMode;

    invoke-virtual {v0}, [Lcom/android/browser/BookmarkViewMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/android/browser/BookmarkViewMode;

    return-object v0
.end method
