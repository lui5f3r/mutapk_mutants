.class Lorg/wikipedia/edit/EditSectionActivity$3;
.super Ljava/lang/Object;
.source "EditSectionActivity.java"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/wikipedia/edit/EditSectionActivity;->showFindInEditor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private final actionModeTag:Ljava/lang/String;

.field final synthetic this$0:Lorg/wikipedia/edit/EditSectionActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/edit/EditSectionActivity;)V
    .locals 0

    .line 568
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$3;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string p1, "actionModeFindInEditor"

    .line 569
    iput-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$3;->actionModeTag:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 4

    .line 573
    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity$3;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-static {v0, p1}, Lorg/wikipedia/edit/EditSectionActivity;->access$302(Lorg/wikipedia/edit/EditSectionActivity;Landroid/view/ActionMode;)Landroid/view/ActionMode;

    const p1, 0x7f1000f0

    .line 574
    invoke-interface {p2, p1}, Landroid/view/Menu;->add(I)Landroid/view/MenuItem;

    move-result-object p1

    .line 575
    new-instance p2, Lorg/wikipedia/edit/FindInEditorActionProvider;

    iget-object v0, p0, Lorg/wikipedia/edit/EditSectionActivity$3;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    iget-object v1, v0, Lorg/wikipedia/edit/EditSectionActivity;->sectionScrollView:Landroid/widget/ScrollView;

    iget-object v2, v0, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-static {v0}, Lorg/wikipedia/edit/EditSectionActivity;->access$400(Lorg/wikipedia/edit/EditSectionActivity;)Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    move-result-object v0

    iget-object v3, p0, Lorg/wikipedia/edit/EditSectionActivity$3;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    invoke-static {v3}, Lorg/wikipedia/edit/EditSectionActivity;->access$300(Lorg/wikipedia/edit/EditSectionActivity;)Landroid/view/ActionMode;

    move-result-object v3

    invoke-direct {p2, v1, v2, v0, v3}, Lorg/wikipedia/edit/FindInEditorActionProvider;-><init>(Landroid/widget/ScrollView;Lorg/wikipedia/views/PlainPasteEditText;Lorg/wikipedia/edit/richtext/SyntaxHighlighter;Landroid/view/ActionMode;)V

    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setActionProvider(Landroid/view/ActionProvider;)Landroid/view/MenuItem;

    .line 576
    invoke-interface {p1}, Landroid/view/MenuItem;->expandActionView()Z

    const/4 p1, 0x1

    return p1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 2

    .line 593
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$3;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    iget-object v0, p1, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-static {p1}, Lorg/wikipedia/edit/EditSectionActivity;->access$400(Lorg/wikipedia/edit/EditSectionActivity;)Lorg/wikipedia/edit/richtext/SyntaxHighlighter;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/wikipedia/views/PlainPasteEditText;->clearMatches(Lorg/wikipedia/edit/richtext/SyntaxHighlighter;)V

    .line 594
    iget-object p1, p0, Lorg/wikipedia/edit/EditSectionActivity$3;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    iget-object p1, p1, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    iget-object v1, p0, Lorg/wikipedia/edit/EditSectionActivity$3;->this$0:Lorg/wikipedia/edit/EditSectionActivity;

    iget-object v1, v1, Lorg/wikipedia/edit/EditSectionActivity;->sectionText:Lorg/wikipedia/views/PlainPasteEditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Landroid/widget/EditText;->setSelection(II)V

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 0

    const-string p2, "actionModeFindInEditor"

    .line 582
    invoke-virtual {p1, p2}, Landroid/view/ActionMode;->setTag(Ljava/lang/Object;)V

    const/4 p1, 0x0

    return p1
.end method
