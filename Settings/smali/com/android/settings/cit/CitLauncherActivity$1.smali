.class Lcom/android/settings/cit/CitLauncherActivity$1;
.super Landroid/widget/ArrayAdapter;
.source "CitLauncherActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/cit/CitLauncherActivity;->refreshList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/cit/CitLauncherActivity;


# direct methods
.method constructor <init>(Lcom/android/settings/cit/CitLauncherActivity;Landroid/content/Context;I[Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    iput-object p1, p0, Lcom/android/settings/cit/CitLauncherActivity$1;->this$0:Lcom/android/settings/cit/CitLauncherActivity;

    invoke-direct {p0, p2, p3, p4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    if-nez p2, :cond_0

    iget-object v3, p0, Lcom/android/settings/cit/CitLauncherActivity$1;->this$0:Lcom/android/settings/cit/CitLauncherActivity;

    invoke-static {v3}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    const v4, 0x7f030015

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, row:Landroid/view/View;
    :goto_0
    const v3, 0x7f0c0042

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .local v2, tv:Landroid/widget/TextView;
    iget-object v4, p0, Lcom/android/settings/cit/CitLauncherActivity$1;->this$0:Lcom/android/settings/cit/CitLauncherActivity;

    invoke-virtual {p0, p1}, Lcom/android/settings/cit/CitLauncherActivity$1;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    #calls: Lcom/android/settings/cit/CitLauncherActivity;->getTitle(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    invoke-static {v4, v3}, Lcom/android/settings/cit/CitLauncherActivity;->access$000(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p0, p1}, Lcom/android/settings/cit/CitLauncherActivity$1;->getItem(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v3}, Lcom/android/settings/cit/CitLauncherActivity;->getResult(Ljava/lang/String;)I

    move-result v0

    .local v0, result:I
    const v3, 0x7f0c0043

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .end local v2           #tv:Landroid/widget/TextView;
    check-cast v2, Landroid/widget/TextView;

    .restart local v2       #tv:Landroid/widget/TextView;
    packed-switch v0, :pswitch_data_0

    :goto_1
    return-object v1

    .end local v0           #result:I
    .end local v1           #row:Landroid/view/View;
    .end local v2           #tv:Landroid/widget/TextView;
    :cond_0
    move-object v1, p2

    .restart local v1       #row:Landroid/view/View;
    goto :goto_0

    .restart local v0       #result:I
    .restart local v2       #tv:Landroid/widget/TextView;
    :pswitch_0
    iget-object v3, p0, Lcom/android/settings/cit/CitLauncherActivity$1;->this$0:Lcom/android/settings/cit/CitLauncherActivity;

    const v4, 0x7f090501

    invoke-virtual {v3, v4}, Lcom/android/settings/cit/CitLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v3, -0xff0100

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :pswitch_1
    iget-object v3, p0, Lcom/android/settings/cit/CitLauncherActivity$1;->this$0:Lcom/android/settings/cit/CitLauncherActivity;

    const v4, 0x7f090502

    invoke-virtual {v3, v4}, Lcom/android/settings/cit/CitLauncherActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/high16 v3, -0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_1

    :pswitch_2
    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
