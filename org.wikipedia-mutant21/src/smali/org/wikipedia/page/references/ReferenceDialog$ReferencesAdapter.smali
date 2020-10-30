.class Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;
.super Landroidx/recyclerview/widget/RecyclerView$Adapter;
.source "ReferenceDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/page/references/ReferenceDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ReferencesAdapter"
.end annotation


# instance fields
.field private references:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/wikipedia/page/references/PageReferences$Reference;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/wikipedia/page/references/ReferenceDialog;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/references/ReferenceDialog;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/wikipedia/page/references/PageReferences$Reference;",
            ">;)V"
        }
    .end annotation

    .line 137
    iput-object p1, p0, Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;->this$0:Lorg/wikipedia/page/references/ReferenceDialog;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;-><init>()V

    .line 135
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;->references:Ljava/util/List;

    .line 138
    invoke-interface {p1, p2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .line 143
    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;->references:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;I)V
    .locals 2

    .line 156
    check-cast p1, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;

    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;->this$0:Lorg/wikipedia/page/references/ReferenceDialog;

    iget-object v1, p0, Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;->references:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/wikipedia/page/references/PageReferences$Reference;

    invoke-virtual {v1}, Lorg/wikipedia/page/references/PageReferences$Reference;->getText()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/wikipedia/page/references/ReferenceDialog;->access$000(Lorg/wikipedia/page/references/ReferenceDialog;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;->references:Ljava/util/List;

    .line 157
    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lorg/wikipedia/page/references/PageReferences$Reference;

    invoke-virtual {p2}, Lorg/wikipedia/page/references/PageReferences$Reference;->getContent()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->removeStyleTags(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->removeCiteMarkup(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/wikipedia/util/StringUtil;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object p2

    .line 156
    invoke-virtual {p1, v0, p2}, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;->bindItem(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
    .locals 2

    .line 149
    iget-object p2, p0, Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;->this$0:Lorg/wikipedia/page/references/ReferenceDialog;

    invoke-virtual {p2}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p2

    const v0, 0x7f0c011b

    const/4 v1, 0x0

    .line 150
    invoke-virtual {p2, v0, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 151
    new-instance p2, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;

    iget-object v0, p0, Lorg/wikipedia/page/references/ReferenceDialog$ReferencesAdapter;->this$0:Lorg/wikipedia/page/references/ReferenceDialog;

    invoke-direct {p2, v0, p1}, Lorg/wikipedia/page/references/ReferenceDialog$ViewHolder;-><init>(Lorg/wikipedia/page/references/ReferenceDialog;Landroid/view/View;)V

    return-object p2
.end method
