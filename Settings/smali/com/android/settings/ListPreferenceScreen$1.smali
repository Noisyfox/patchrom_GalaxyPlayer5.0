.class Lcom/android/settings/ListPreferenceScreen$1;
.super Ljava/lang/Object;
.source "ListPreferenceScreen.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/ListPreferenceScreen;->setupButtons(Landroid/app/Dialog;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/ListPreferenceScreen;


# direct methods
.method constructor <init>(Lcom/android/settings/ListPreferenceScreen;)V
    .locals 0
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/ListPreferenceScreen$1;->this$0:Lcom/android/settings/ListPreferenceScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .parameter "preference"

    .prologue
    iget-object v0, p0, Lcom/android/settings/ListPreferenceScreen$1;->this$0:Lcom/android/settings/ListPreferenceScreen;

    #calls: Lcom/android/settings/ListPreferenceScreen;->updateValue()V
    invoke-static {v0}, Lcom/android/settings/ListPreferenceScreen;->access$000(Lcom/android/settings/ListPreferenceScreen;)V

    const/4 v0, 0x1

    return v0
.end method
