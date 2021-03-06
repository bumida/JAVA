package animalGame;

import java.util.Random;
import java.util.Scanner;

/*
 * �𿩶� ���� ����(���ƿ� ����)
 */
public class AnimalField {
	static String[] questions = {
			"Q.���� �� ���� ��̴�?\n"
			+ "1.ö�� : ���� ������ ���ƾ��.\n"
			+ "2.���� : �ҸӴ� ����� �ֹ��� ��Ⱦ��.\n"
			+ "3.�μ� : ���� �峭���� ��������.\n"
			+ "4.Ÿ�뽺 : ģ������ å�� ��������.",
			"Q.���� �ֵ��� 3���� �Ծ����.\nö���� ���� ���� �ֵ��׺���\n"
			+ "3�� �� �Ծ����. ���� �ֵ��״� �� �� �ϱ��?\n"
					+ "1.5��\n"
					+ "2.6��\n"
					+ "3.9��\n"
					+ "4.100��",
			};
	static int[] answers = {1, 3};
	
	//�̸�, ����, ������, ���̰���, ü��
	String name;
	String feed;
	double weight;
	int feed_cnt;
	int hp;
	//�⺻������()
	public AnimalField() {}
	//�ʱ�ȭ ������(5��)
	public AnimalField(String name, String feed, double weight, int feed_cnt, int hp) {
		this.name = name;
		this.feed = feed;
		this.weight = weight;
		this.feed_cnt = feed_cnt;
		this.hp = hp;
	}
	//�Ա�()
	//ü�� 1���� ���̰���1����(���̰� 0���� �����ֱ�)
	//���� ������ ������ 10kg����, 100kg�̸� �ϴó���
	void eat() {
		if(feed_cnt == 0) {
			System.out.println(feed + "��(��) �����ؿ�T^T\n�츮 ��å�Ϸ� ����.");
		}else {
			feed_cnt--;
			hp++;
			weight += 10;
			System.out.println("�ȳ� ���־�^^");
			System.out.println("ü�� : " + hp);
			System.out.println("���� "+ feed + " ���� : " + feed_cnt);
			System.out.println("������ : " + weight);
		}
	}
	//��å�ϱ�()
	//ü�� 1����
	//������ ���� ���� �� ����� ü�� 1 ����
	//����� ���� ���� 2����
	void walk(){
		if(hp > 1) {
			hp--;
			
			Random r = new Random();
			int idx = r.nextInt(2);
			int choice = 0;
			
			System.out.println(questions[idx]);
			choice = new Scanner(System.in).nextInt();
			
			if(choice == answers[idx]) {
				System.out.println("�Ϳ�~ �����̿���!!! �ȶ��ϳ׿�~");
				feed_cnt+=2;
			}else {
				hp--;
				System.out.println("����Ф�");
			}
		}else {
			System.out.println("ü���� �����ؿ�~ ���� �ڰ� ������!!");
		}
	}
	
	//���ڱ�()
	//3�ʿ� ü�� 1�� ����
	void sleep() {
		System.out.print("�ڴ���");
		for(int i=0; i<3; i++) {
			try {Thread.sleep(1000);} catch (InterruptedException e) {;}
			System.out.print(".");
		}
		System.out.println();
		hp++;
		System.out.println("��~ �����! ü�� 1 ����!");
	}
}









