.class public Lorg/wikipedia/language/LangLinksActivity_ViewBinding;
.super Ljava/lang/Object;
.source "LangLinksActivity_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/language/LangLinksActivity;


# direct methods
.method public constructor <init>(Lorg/wikipedia/language/LangLinksActivity;)V
    .locals 1

    .line 21
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/wikipedia/language/LangLinksActivity_ViewBinding;-><init>(Lorg/wikipedia/language/LangLinksActivity;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/language/LangLinksActivity;Landroid/view/View;)V
    .locals 3

    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 26
    iput-object p1, p0, Lorg/wikipedia/language/LangLinksActivity_ViewBinding;->target:Lorg/wikipedia/language/LangLinksActivity;

    const v0, 0x7f0901e0

    const-string v1, "field \'langLinksProgress\'"

    .line 28
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/language/LangLinksActivity;->langLinksProgress:Landroid/view/View;

    .line 29
    const-class v0, Lorg/wikipedia/views/WikiErrorView;

    const v1, 0x7f0901df

    const-string v2, "field \'langLinksError\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/WikiErrorView;

    iput-object v0, p1, Lorg/wikipedia/language/LangLinksActivity;->langLinksError:Lorg/wikipedia/views/WikiErrorView;

    .line 30
    const-class v0, Lorg/wikipedia/views/SearchEmptyView;

    const v1, 0x7f0901de

    const-string v2, "field \'langLinksEmpty\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/wikipedia/views/SearchEmptyView;

    iput-object v0, p1, Lorg/wikipedia/language/LangLinksActivity;->langLinksEmpty:Lorg/wikipedia/views/SearchEmptyView;

    .line 31
    const-class v0, Landroidx/recyclerview/widget/RecyclerView;

    const v1, 0x7f0901e1

    const-string v2, "field \'langLinksList\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p1, Lorg/wikipedia/language/LangLinksActivity;->langLinksList:Landroidx/recyclerview/widget/RecyclerView;

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 37
    iget-object v0, p0, Lorg/wikipedia/language/LangLinksActivity_ViewBinding;->target:Lorg/wikipedia/language/LangLinksActivity;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 39
    iput-object v1, p0, Lorg/wikipedia/language/LangLinksActivity_ViewBinding;->target:Lorg/wikipedia/language/LangLinksActivity;

    .line 41
    iput-object v1, v0, Lorg/wikipedia/language/LangLinksActivity;->langLinksProgress:Landroid/view/View;

    .line 42
    iput-object v1, v0, Lorg/wikipedia/language/LangLinksActivity;->langLinksError:Lorg/wikipedia/views/WikiErrorView;

    .line 43
    iput-object v1, v0, Lorg/wikipedia/language/LangLinksActivity;->langLinksEmpty:Lorg/wikipedia/views/SearchEmptyView;

    .line 44
    iput-object v1, v0, Lorg/wikipedia/language/LangLinksActivity;->langLinksList:Landroidx/recyclerview/widget/RecyclerView;

    return-void

    .line 38
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
