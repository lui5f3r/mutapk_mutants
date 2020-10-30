.class Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;
.super Lorg/wikipedia/views/MultiSelectActionModeCallback;
.source "WikipediaLanguagesFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MultiSelectCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;


# direct methods
.method private constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V
    .locals 0

    .line 400
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-direct {p0}, Lorg/wikipedia/views/MultiSelectActionModeCallback;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$1;)V
    .locals 0

    .line 400
    invoke-direct {p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V

    return-void
.end method


# virtual methods
.method public onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z
    .locals 2

    .line 403
    invoke-super {p0, p1, p2}, Lorg/wikipedia/views/MultiSelectActionModeCallback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    const v0, 0x7f10047b

    .line 404
    invoke-virtual {p1, v0}, Landroidx/appcompat/view/ActionMode;->setTitle(I)V

    .line 405
    invoke-virtual {p1}, Landroidx/appcompat/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const v1, 0x7f0d0002

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 406
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$802(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    .line 407
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$300(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 408
    invoke-super {p0, p1, p2}, Lorg/wikipedia/views/MultiSelectActionModeCallback;->onCreateActionMode(Landroidx/appcompat/view/ActionMode;Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method protected onDeleteSelected()V
    .locals 1

    .line 413
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-virtual {v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->showRemoveLanguagesDialog()V

    return-void
.end method

.method public onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V
    .locals 2

    .line 419
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    invoke-static {v0}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$1400(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;)V

    .line 420
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$1500(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Z)V

    .line 421
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment$MultiSelectCallback;->this$0:Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;->access$802(Lorg/wikipedia/settings/languages/WikipediaLanguagesFragment;Landroidx/appcompat/view/ActionMode;)Landroidx/appcompat/view/ActionMode;

    .line 422
    invoke-super {p0, p1}, Lorg/wikipedia/views/MultiSelectActionModeCallback;->onDestroyActionMode(Landroidx/appcompat/view/ActionMode;)V

    return-void
.end method
