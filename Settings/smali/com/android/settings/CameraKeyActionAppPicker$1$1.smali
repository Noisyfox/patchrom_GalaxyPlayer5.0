.class Lcom/android/settings/CameraKeyActionAppPicker$1$1;
.super Ljava/lang/Object;
.source "CameraKeyActionAppPicker.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/CameraKeyActionAppPicker$1;->run()V
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
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private final sCollator:Ljava/text/Collator;

.field final synthetic this$1:Lcom/android/settings/CameraKeyActionAppPicker$1;

.field final synthetic val$pm:Landroid/content/pm/PackageManager;


# direct methods
.method constructor <init>(Lcom/android/settings/CameraKeyActionAppPicker$1;Landroid/content/pm/PackageManager;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/CameraKeyActionAppPicker$1$1;->this$1:Lcom/android/settings/CameraKeyActionAppPicker$1;

    iput-object p2, p0, Lcom/android/settings/CameraKeyActionAppPicker$1$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/CameraKeyActionAppPicker$1$1;->sCollator:Ljava/text/Collator;

    return-void
.end method


# virtual methods
.method public compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I
    .locals 3
    .parameter "object1"
    .parameter "object2"

    .prologue
    iget-object v0, p0, Lcom/android/settings/CameraKeyActionAppPicker$1$1;->sCollator:Ljava/text/Collator;

    iget-object v1, p0, Lcom/android/settings/CameraKeyActionAppPicker$1$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    iget-object v2, p0, Lcom/android/settings/CameraKeyActionAppPicker$1$1;->val$pm:Landroid/content/pm/PackageManager;

    invoke-virtual {p2, v2}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    check-cast p1, Landroid/content/pm/ResolveInfo;

    .end local p1
    check-cast p2, Landroid/content/pm/ResolveInfo;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lcom/android/settings/CameraKeyActionAppPicker$1$1;->compare(Landroid/content/pm/ResolveInfo;Landroid/content/pm/ResolveInfo;)I

    move-result v0

    return v0
.end method
