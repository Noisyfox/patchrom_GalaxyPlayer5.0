.class Lcom/android/settings/AccessControl$1;
.super Ljava/lang/Object;
.source "AccessControl.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/AccessControl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Landroid/content/pm/PackageInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$0:Lcom/android/settings/AccessControl;


# direct methods
.method constructor <init>(Lcom/android/settings/AccessControl;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/AccessControl$1;->this$0:Lcom/android/settings/AccessControl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/AccessControl$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I
    .locals 4
    .parameter "object1"
    .parameter "object2"

    .prologue
    const-string v3, ""

    iget-object v0, p0, Lcom/android/settings/AccessControl$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v1, :cond_0

    const-string v1, ""

    move-object v1, v3

    :goto_0
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    if-nez v2, :cond_1

    const-string v2, ""

    move-object v2, v3

    :goto_1
    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0

    :cond_0
    iget-object v1, p1, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v2, p0, Lcom/android/settings/AccessControl$1;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/settings/AccessControl;->access$000(Lcom/android/settings/AccessControl;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    goto :goto_0

    :cond_1
    iget-object v2, p2, Landroid/content/pm/PackageInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v3, p0, Lcom/android/settings/AccessControl$1;->this$0:Lcom/android/settings/AccessControl;

    #getter for: Lcom/android/settings/AccessControl;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v3}, Lcom/android/settings/AccessControl;->access$000(Lcom/android/settings/AccessControl;)Landroid/content/pm/PackageManager;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    goto :goto_1
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Landroid/content/pm/PackageInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/PackageInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/AccessControl$1;->compare(Landroid/content/pm/PackageInfo;Landroid/content/pm/PackageInfo;)I

    move-result v0

    return v0
.end method
