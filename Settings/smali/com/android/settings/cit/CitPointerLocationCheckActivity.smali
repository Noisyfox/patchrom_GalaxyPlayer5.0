.class public Lcom/android/settings/cit/CitPointerLocationCheckActivity;
.super Lcom/android/settings/cit/CitBaseActivity;
.source "CitPointerLocationCheckActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/settings/cit/CitBaseActivity;-><init>()V

    return-void
.end method

.method public static getTitle(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .parameter "context"

    .prologue
    const v0, 0x7f090507

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    const-class v0, Lcom/android/settings/cit/CitPointerLocationCheckActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected initResources()V
    .locals 3

    .prologue
    invoke-super {p0}, Lcom/android/settings/cit/CitBaseActivity;->initResources()V

    new-instance v1, Lcom/android/internal/widget/PointerLocationView;

    invoke-direct {v1, p0}, Lcom/android/internal/widget/PointerLocationView;-><init>(Landroid/content/Context;)V

    .local v1, view:Landroid/view/View;
    const v2, 0x7f02009c

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundResource(I)V

    invoke-virtual {p0, v1}, Lcom/android/settings/cit/CitPointerLocationCheckActivity;->setContentView(Landroid/view/View;)V

    invoke-virtual {p0}, Lcom/android/settings/cit/CitPointerLocationCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    .local v0, lp:Landroid/view/WindowManager$LayoutParams;
    const/high16 v2, 0x3f80

    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->screenBrightness:F

    invoke-virtual {p0}, Lcom/android/settings/cit/CitPointerLocationCheckActivity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V

    return-void
.end method
