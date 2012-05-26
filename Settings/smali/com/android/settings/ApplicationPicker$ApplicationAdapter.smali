.class Lcom/android/settings/ApplicationPicker$ApplicationAdapter;
.super Landroid/widget/BaseAdapter;
.source "ApplicationPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/ApplicationPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApplicationAdapter"
.end annotation


# instance fields
.field private mPm:Landroid/content/pm/PackageManager;

.field final synthetic this$0:Lcom/android/settings/ApplicationPicker;


# direct methods
.method public constructor <init>(Lcom/android/settings/ApplicationPicker;Landroid/content/Context;)V
    .locals 1
    .parameter
    .parameter "context"

    .prologue
    iput-object p1, p0, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->this$0:Lcom/android/settings/ApplicationPicker;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    invoke-virtual {p2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->mPm:Landroid/content/pm/PackageManager;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->this$0:Lcom/android/settings/ApplicationPicker;

    #getter for: Lcom/android/settings/ApplicationPicker;->mNonSystemProcesses:Ljava/util/ArrayList;
    invoke-static {v0}, Lcom/android/settings/ApplicationPicker;->access$200(Lcom/android/settings/ApplicationPicker;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Lcom/android/settings/ApplicationPicker$AppProcess;
    .locals 2
    .parameter "position"

    .prologue
    if-ltz p1, :cond_0

    invoke-virtual {p0}, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->getCount()I

    move-result v0

    if-lt p1, v0, :cond_1

    :cond_0
    const/4 v0, 0x0

    .end local p0
    :goto_0
    return-object v0

    .restart local p0
    :cond_1
    iget-object v0, p0, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->this$0:Lcom/android/settings/ApplicationPicker;

    #getter for: Lcom/android/settings/ApplicationPicker;->mProcessMap:Ljava/util/HashMap;
    invoke-static {v0}, Lcom/android/settings/ApplicationPicker;->access$300(Lcom/android/settings/ApplicationPicker;)Ljava/util/HashMap;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->this$0:Lcom/android/settings/ApplicationPicker;

    #getter for: Lcom/android/settings/ApplicationPicker;->mNonSystemProcesses:Ljava/util/ArrayList;
    invoke-static {v1}, Lcom/android/settings/ApplicationPicker;->access$200(Lcom/android/settings/ApplicationPicker;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    .end local p0
    check-cast p0, Lcom/android/settings/ApplicationPicker$AppProcess;

    move-object v0, p0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1
    .parameter "x0"

    .prologue
    invoke-virtual {p0, p1}, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->getItem(I)Lcom/android/settings/ApplicationPicker$AppProcess;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .parameter "position"

    .prologue
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 10
    .parameter "position"
    .parameter "convertView"
    .parameter "parent"

    .prologue
    if-nez p2, :cond_0

    invoke-virtual {p3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v9, "layout_inflater"

    invoke-virtual {v8, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/LayoutInflater;

    .local v4, inflater:Landroid/view/LayoutInflater;
    const v8, 0x7f030002

    const/4 v9, 0x0

    invoke-virtual {v4, v8, p3, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .end local v4           #inflater:Landroid/view/LayoutInflater;
    :cond_0
    invoke-virtual {p0, p1}, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->getItem(I)Lcom/android/settings/ApplicationPicker$AppProcess;

    move-result-object v6

    .local v6, process:Lcom/android/settings/ApplicationPicker$AppProcess;
    if-eqz v6, :cond_4

    iget-object v7, v6, Lcom/android/settings/ApplicationPicker$AppProcess;->processName:Ljava/lang/String;

    .local v7, processName:Ljava/lang/String;
    iget-object v1, v6, Lcom/android/settings/ApplicationPicker$AppProcess;->apps:Ljava/util/ArrayList;

    .local v1, apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    const/4 v5, 0x0

    .local v5, label:Ljava/lang/StringBuilder;
    const/4 v3, 0x0

    .local v3, icon:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .local v0, app:Landroid/content/pm/ApplicationInfo;
    if-nez v5, :cond_2

    new-instance v5, Ljava/lang/StringBuilder;

    .end local v5           #label:Ljava/lang/StringBuilder;
    iget-object v8, p0, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-direct {v5, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .restart local v5       #label:Ljava/lang/StringBuilder;
    :goto_1
    if-nez v3, :cond_1

    iget-object v8, p0, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto :goto_0

    :cond_2
    const/16 v8, 0x3b

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v8}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    goto :goto_1

    .end local v0           #app:Landroid/content/pm/ApplicationInfo;
    :cond_3
    const v8, 0x7f0c0003

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x7f0c0004

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/TextView;

    invoke-virtual {v8, v7}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v8, 0x1020006

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    const v8, 0x1020001

    invoke-virtual {p2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/CheckBox;

    iget-object v9, p0, Lcom/android/settings/ApplicationPicker$ApplicationAdapter;->this$0:Lcom/android/settings/ApplicationPicker;

    #getter for: Lcom/android/settings/ApplicationPicker;->mChecked:Ljava/util/HashSet;
    invoke-static {v9}, Lcom/android/settings/ApplicationPicker;->access$000(Lcom/android/settings/ApplicationPicker;)Ljava/util/HashSet;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Landroid/widget/CheckBox;->setChecked(Z)V

    .end local v1           #apps:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    .end local v2           #i$:Ljava/util/Iterator;
    .end local v3           #icon:Landroid/graphics/drawable/Drawable;
    .end local v5           #label:Ljava/lang/StringBuilder;
    .end local v7           #processName:Ljava/lang/String;
    :cond_4
    return-object p2
.end method
