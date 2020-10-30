.class Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;
.super Lorg/wikipedia/views/DefaultViewHolder;
.source "ConfigureItemLanguageDialogView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LanguageItemHolder"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/wikipedia/views/DefaultViewHolder<",
        "Landroid/view/View;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private checkbox:Landroid/widget/CheckBox;

.field private container:Landroid/view/View;

.field private langCode:Ljava/lang/String;

.field private langNameView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;


# direct methods
.method constructor <init>(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;Landroid/view/View;)V
    .locals 0

    .line 61
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    .line 62
    invoke-direct {p0, p2}, Lorg/wikipedia/views/DefaultViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090146

    .line 63
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->container:Landroid/view/View;

    const p1, 0x7f090144

    .line 64
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->checkbox:Landroid/widget/CheckBox;

    const p1, 0x7f09014a

    .line 65
    invoke-virtual {p2, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->langNameView:Landroid/widget/TextView;

    return-void
.end method

.method private updateState()V
    .locals 2

    .line 87
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-static {v0}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->access$100(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;)Ljava/util/List;

    move-result-object v0

    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->langCode:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    .line 88
    iget-object v1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {v1, v0}, Landroid/widget/CheckBox;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method bindItem(Ljava/lang/String;)V
    .locals 4

    .line 69
    iput-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->langCode:Ljava/lang/String;

    .line 70
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->container:Landroid/view/View;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v2, -0x1

    const/4 v3, -0x2

    invoke-direct {v1, v2, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 71
    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->langNameView:Landroid/widget/TextView;

    invoke-static {}, Lorg/wikipedia/WikipediaApp;->getInstance()Lorg/wikipedia/WikipediaApp;

    move-result-object v1

    invoke-virtual {v1}, Lorg/wikipedia/WikipediaApp;->language()Lorg/wikipedia/language/AppLanguageState;

    move-result-object v1

    invoke-virtual {v1, p1}, Lorg/wikipedia/language/AppLanguageState;->getAppLanguageLocalizedName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 72
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->container:Landroid/view/View;

    invoke-virtual {p1, p0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 73
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->checkbox:Landroid/widget/CheckBox;

    invoke-virtual {p1, p0}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->updateState()V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .locals 1

    .line 78
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-static {p1}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->access$100(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->langCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 79
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-static {p1}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->access$100(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->langCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 81
    :cond_0
    iget-object p1, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->this$0:Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;

    invoke-static {p1}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;->access$100(Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView;)Ljava/util/List;

    move-result-object p1

    iget-object v0, p0, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->langCode:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    :goto_0
    invoke-direct {p0}, Lorg/wikipedia/feed/configure/ConfigureItemLanguageDialogView$LanguageItemHolder;->updateState()V

    return-void
.end method
