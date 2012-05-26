.class Lcom/android/settings/ApplicationPicker$AppProcess;
.super Ljava/lang/Object;
.source "ApplicationPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApplicationPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "AppProcess"
.end annotation


# instance fields
.field apps:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field processName:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/settings/ApplicationPicker;


# direct methods
.method constructor <init>(Lcom/android/settings/ApplicationPicker;)V
    .locals 1
    .parameter

    .prologue
    iput-object p1, p0, Lcom/android/settings/ApplicationPicker$AppProcess;->this$0:Lcom/android/settings/ApplicationPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/settings/ApplicationPicker$AppProcess;->apps:Ljava/util/ArrayList;

    return-void
.end method
