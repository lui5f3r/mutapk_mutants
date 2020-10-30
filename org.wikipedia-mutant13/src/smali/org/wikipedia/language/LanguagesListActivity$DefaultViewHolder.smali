.class Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "LanguagesListActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/wikipedia/language/LanguagesListActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultViewHolder"
.end annotation


# instance fields
.field private languageCodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private sectionHeaderTextView:Landroid/widget/TextView;

.field final synthetic this$0:Lorg/wikipedia/language/LanguagesListActivity;


# direct methods
.method constructor <init>(Lorg/wikipedia/language/LanguagesListActivity;Ljava/util/List;Landroid/view/View;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .line 293
    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;->this$0:Lorg/wikipedia/language/LanguagesListActivity;

    .line 294
    invoke-direct {p0, p3}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    const p1, 0x7f090387

    .line 295
    invoke-virtual {p3, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;->sectionHeaderTextView:Landroid/widget/TextView;

    .line 296
    iput-object p2, p0, Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;->languageCodes:Ljava/util/List;

    return-void
.end method


# virtual methods
.method bindItem(I)V
    .locals 2

    .line 300
    iget-object v0, p0, Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;->sectionHeaderTextView:Landroid/widget/TextView;

    iget-object v1, p0, Lorg/wikipedia/language/LanguagesListActivity$DefaultViewHolder;->languageCodes:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/CharSequence;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
