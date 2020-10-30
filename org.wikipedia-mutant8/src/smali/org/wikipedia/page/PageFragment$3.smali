.class Lorg/wikipedia/page/PageFragment$3;
.super Ljava/lang/Object;
.source "PageFragment.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/page/PageFragment;->showFindReferenceInPage(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/page/PageFragment;

.field final synthetic val$backLinksList:Ljava/util/List;

.field final synthetic val$referenceAnchor:Ljava/lang/String;

.field final synthetic val$referenceText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/wikipedia/page/PageFragment;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 860
    iput-object p1, p0, Lorg/wikipedia/page/PageFragment$3;->this$0:Lorg/wikipedia/page/PageFragment;

    iput-object p2, p0, Lorg/wikipedia/page/PageFragment$3;->val$referenceAnchor:Ljava/lang/String;

    iput-object p3, p0, Lorg/wikipedia/page/PageFragment$3;->val$referenceText:Ljava/lang/String;

    iput-object p4, p0, Lorg/wikipedia/page/PageFragment$3;->val$backLinksList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 6

    const p1, 0x7f10019a

    .line 863
    invoke-interface {p2, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 864
    new-instance p2, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;

    iget-object v1, p0, Lorg/wikipedia/page/PageFragment$3;->this$0:Lorg/wikipedia/page/PageFragment;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lorg/wikipedia/page/PageFragment$3;->val$referenceAnchor:Ljava/lang/String;

    iget-object v4, p0, Lorg/wikipedia/page/PageFragment$3;->val$referenceText:Ljava/lang/String;

    iget-object v5, p0, Lorg/wikipedia/page/PageFragment$3;->val$backLinksList:Ljava/util/List;

    move-object v0, p2

    invoke-direct/range {v0 .. v5}, Lorg/wikipedia/page/PageFragment$FindReferenceInPageActionProvider;-><init>(Lorg/wikipedia/page/PageFragment;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 865
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const-string p2, "actionModeFindReferenceInPage"

    .line 871
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
