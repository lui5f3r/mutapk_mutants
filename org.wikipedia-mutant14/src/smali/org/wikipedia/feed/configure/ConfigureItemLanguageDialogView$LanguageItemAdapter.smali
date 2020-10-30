.class final Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ConfigureItemLanguageDialogView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LanguageItemAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$Adapter<",
        "Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;


# direct methods
.method private constructor <init>(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;)V
    .locals 0

    .line 92
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$1;)V
    .locals 0

    .line 92
    invoke-direct {p0, p1}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;-><init>(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;)V

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 95
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->access$200(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public bridge synthetic onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .line 92
    check-cast p1, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;

    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;->onBindViewHolder(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;I)V
    .locals 1

    .line 106
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->access$200(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    invoke-virtual {p1, p2}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->bindItem(Ljava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 0

    .line 92
    invoke-virtual {p0, p1, p2}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;

    move-result-object p1

    return-object p1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;
    .locals 1

    .line 100
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0c007d

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 101
    new-instance p2, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;

    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemAdapter;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;-><init>(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;Landroid/view/View;)V

    return-object p2
.end method
