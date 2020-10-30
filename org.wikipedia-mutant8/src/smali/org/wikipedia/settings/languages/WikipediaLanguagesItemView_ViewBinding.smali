.class public Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;
.super Ljava/lang/Object;
.source "WikipediaLanguagesItemView_ViewBinding.java"

# interfaces
.implements Lbutterknife/Unbinder;


# instance fields
.field private target:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

.field private view7f0904b8:Landroid/view/View;

.field private viewSource:Landroid/view/View;


# direct methods
.method public constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;Landroid/view/View;)V

    return-void
.end method

.method public constructor <init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;Landroid/view/View;)V
    .locals 4

    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    iput-object p1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;->target:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    .line 34
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904bb

    const-string v2, "field \'orderView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->orderView:Landroid/widget/TextView;

    const v0, 0x7f0904b8

    const-string v1, "field \'checkBox\' and method \'onCheckedChanged\'"

    .line 35
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v1

    .line 36
    const-class v2, Landroid/widget/CheckBox;

    const-string v3, "field \'checkBox\'"

    invoke-static {v1, v0, v3, v2}, Lbutterknife/internal/Utils;->castView(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    iput-object v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->checkBox:Landroid/widget/CheckBox;

    .line 37
    iput-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;->view7f0904b8:Landroid/view/View;

    .line 38
    check-cast v1, Landroid/widget/CompoundButton;

    new-instance v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding$1;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding$1;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;)V

    invoke-virtual {v1, v0}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 44
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904bc

    const-string v2, "field \'titleView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->titleView:Landroid/widget/TextView;

    .line 45
    const-class v0, Landroid/widget/TextView;

    const v1, 0x7f0904b9

    const-string v2, "field \'langCodeView\'"

    invoke-static {p2, v1, v2, v0}, Lbutterknife/internal/Utils;->findRequiredViewAsType(Landroid/view/View;ILjava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->langCodeView:Landroid/widget/TextView;

    const v0, 0x7f0904ba

    const-string v1, "field \'dragHandleView\'"

    .line 46
    invoke-static {p2, v0, v1}, Lbutterknife/internal/Utils;->findRequiredView(Landroid/view/View;ILjava/lang/String;)Landroid/view/View;

    move-result-object v0

    iput-object v0, p1, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->dragHandleView:Landroid/view/View;

    .line 47
    iput-object p2, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;->viewSource:Landroid/view/View;

    .line 48
    new-instance v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding$2;

    invoke-direct {v0, p0, p1}, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding$2;-><init>(Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;)V

    invoke-virtual {p2, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method public unbind()V
    .locals 2

    .line 59
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;->target:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 61
    iput-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;->target:Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;

    .line 63
    iput-object v1, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->orderView:Landroid/widget/TextView;

    .line 64
    iput-object v1, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->checkBox:Landroid/widget/CheckBox;

    .line 65
    iput-object v1, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->titleView:Landroid/widget/TextView;

    .line 66
    iput-object v1, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->langCodeView:Landroid/widget/TextView;

    .line 67
    iput-object v1, v0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView;->dragHandleView:Landroid/view/View;

    .line 69
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;->view7f0904b8:Landroid/view/View;

    check-cast v0, Landroid/widget/CompoundButton;

    invoke-virtual {v0, v1}, Landroid/widget/CompoundButton;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 70
    iput-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;->view7f0904b8:Landroid/view/View;

    .line 71
    iget-object v0, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;->viewSource:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 72
    iput-object v1, p0, Lorg/wikipedia/settings/languages/WikipediaLanguagesItemView_ViewBinding;->viewSource:Landroid/view/View;

    return-void

    .line 60
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Bindings already cleared."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
